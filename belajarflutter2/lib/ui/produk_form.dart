import 'package: flutter/material.dart';
import 'package:my_app/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget {
    const ProdukForm({Key? key}) : super(key: key);
    @override
    ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
    final _kodeProdukController = TextEditingController();
    final _namaProdukController = TextEditingController();
    final _hargaProdukController = TextEditingController();
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Form Produk'),
            ), // AppBar
            body: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    children: [
                        _textboxKodeProduk(),
                        _textboxNamaProduk(),
                        _textboxHarga(),
                        _tombolSimpan()
                    ],
                )),
            ); // Column // Container
    } // Scaffold

    _textboxKodeProduk() {
        return TextField(
            decoration: const InputDecoration(labelText: "Kode Produk"),
            controller: _kodeProdukController,
        ); // TextField
    }

    _textboxNamaProduk() {
        return TextField(
            decoration: const InputDecoration(labelText: "Nama Produk"),
            controller: _namaProdukController,
        ); // TextField
    }

    _textboxHarga() {
        return TextField(
            decoration: const InputDecoration(labelText: "Harga"),
            controller: _hargaProdukController,
        ); // TextField
    }

    _tombolSimpan() {
        return ElevatedButton(
            onPressed: () {
                String kodeProduk = _kodeProdukController. text;
                String namaProduk = _namaProdukController. text;
                int harga = int.parse(_hargaProdukController.text);
                Navigator.of(context).push(MaterialPageRoute(
                    bbuilder: (context) => ProdukDetail(
          kodeProduk: kodeProduk,
          namaProduk: namaProduk,
          harga: harga,
        ),
      )); // ProdukDetail // MaterialPageRoute
    },
    child: const Text('Simpan'),
  ); // ElevatedButton
}