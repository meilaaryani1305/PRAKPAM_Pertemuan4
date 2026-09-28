import 'package:flutter/material.dart';
import 'package:pertemuan_4/models/data.dart';
import 'package:pertemuan_4/views/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override 
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(product: products[index]),
              ),
            );
          },
          title: Text(products[index].name),
          subtitle: Text("Rp ${products[index].price}"),
          leading: Image.network(products[index].image, width: 50, height: 50),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
        );
      },
    );

    // return Scaffold(
    //   appBar: AppBar(backgroundColor: Colors.blue, title: Text("Home")),
    //   body: ListView.builder(
    //     itemCount: products.length,
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         onTap: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => DetailPage(product: products[index])
    //             )
    //           );
    //         },
    //         title: Text(products[index].name),
    //         subtitle: Text("Rp ${products[index].price}"),
    //         leading: Image.network(
    //           products[index].image,
    //           width: 50,
    //           height: 50,
    //         ),
    //         trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
    //       );
    //     },
    //   ),
    // );
  }
}
