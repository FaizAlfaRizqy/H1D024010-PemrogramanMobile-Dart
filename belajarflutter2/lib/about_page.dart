import 'package: flutter/material.dart';
import 'package: router_flutter/sidemenu.dart';

class AboutPage extends StatelessWidget {
    const AboutPage({super.key}) ;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('About Page'),
            ), // AppBar
            body: const Center(
                child: Text('Ini adalah halaman About'),
            ), // Center
            drawer: const Sidemenu(),
            ); // Scaffold
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text( 'Home'),
                onTap: () {
                    // Navigasi ke halaman Home
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage(),
                        ), // MaterialPageRoute
                    );

                }, // onTap
            ), // ListTile
            ListTile(
                leading: const Icon(Icons.info),
                title: const Text( 'About'),
                onTap: () {
                    // Navigasi ke halaman Settings
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutPage(),
                        ), // MaterialPageRoute
                    );

                }, // onTap
            ), // ListTile

        ); // Drawer
    }
}