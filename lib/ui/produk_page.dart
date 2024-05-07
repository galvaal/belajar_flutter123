import 'package:belajar_flutter123/ui/produk_detail.dart';
import 'package:belajar_flutter123/ui/produk_from.dart';
import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  List<Map<String, dynamic>> items = [
    {
      'kodeProduk': 'KL501',
      'namaProduk': 'Kulkas',
      'harga': 2500000,
    },
    {
      'kodeProduk': 'TV101',
      'namaProduk': 'TV',
      'harga': 5000000,
    },
    {
      'kodeProduk': 'MCU101',
      'namaProduk': 'Mesin Cuci',
      'harga': 15000000,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        backgroundColor: Color(0xFF577FA6),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProdukFrom(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemProduk(
            kodeProduk: items[index]['kodeProduk'],
            namaProduk: items[index]['namaProduk'],
            harga: items[index]['harga'],
          );
        },
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  const ItemProduk({
    Key? key,
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
                  kodeProduk: kodeProduk,
                  namaProduk: namaProduk,
                  harga: harga,
                ),
          ),
        );
      },
      child: Card(
        child: ListTile(
          title: Text(namaProduk),
          subtitle: Text('\$$harga'),
        ),
      ),
    );
  }
}

