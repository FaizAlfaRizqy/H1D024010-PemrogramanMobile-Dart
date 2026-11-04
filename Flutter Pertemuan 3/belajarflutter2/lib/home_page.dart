import 'package:flutter/material.dart';
import 'package:belajarflutter2/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
    const HomePage({Key? key}) : super(key: key);

    @override
    // ignore: library_private_types_in_public_api
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    String? namauser;

    @override
    void initState() {
        super.initState();
        _loadUsername();
    }

    Future<void> _loadUsername() async {
        final prefs = await SharedPreferences.getInstance();
        if (!mounted) {
            return;
        }
        setState(() {
            namauser = prefs.getString('username');
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Home Page'),
            ), // AppBar
            body: Center(
                child: Text('Ini adalah halaman User $namauser'),
            ), // Center
            drawer: const Sidemenu(),
        ); // Scaffold
    }
}