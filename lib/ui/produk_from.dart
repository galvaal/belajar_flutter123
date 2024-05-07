import 'package:belajar_flutter123/ui/produk_detail.dart';
import 'package:flutter/material.dart';


class ProdukFrom extends StatefulWidget {
  const ProdukFrom({Key? key}) : super(key: key);
  
  @override
  _ProdukFromState createState() => _ProdukFromState();
}

class _ProdukFromState extends State<ProdukFrom> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
        backgroundColor: Color(0xFFA171E0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  Widget _textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  Widget _textboxHargaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga Produk"),
      controller: _hargaProdukTextboxController,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String kodeProduk = _kodeProdukTextboxController.text;
        String namaProduk = _namaProdukTextboxController.text;
        int harga = int.parse(_hargaProdukTextboxController.text);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProdukDetail(
                kodeProduk: kodeProduk,
                namaProduk: namaProduk,
                harga: harga,
              ),
        ));
      },
      child: const Text('Simpan'),
    );
  }
}

