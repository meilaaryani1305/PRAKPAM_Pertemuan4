import 'package:flutter/material.dart';
import 'package:pertemuan_4/models/data.dart';

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(product.image),
              Text(product.name),
              Text("Rp. ${product.price}"),
              Text(product.description),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                }, 
                child: Text("Kembali")
              )
            ],
          ),
        ),
      ),
    );
  }
}
