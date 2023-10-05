import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models/ProfuctAPI.dart';


class ProductData extends StatefulWidget {
  ProductAPIData createState() => ProductAPIData();
}

class ProductAPIData extends State<ProductData> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<State> key = GlobalKey<State>();

  List<Product> _product = [];

  @override
  void initState() {
    super.initState();
    productfetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          body: ListView.builder(
              itemCount: _product.length,
              itemBuilder: (context, index) {
                final photo = _product[index];
                return ListTile(
                  leading: Image.network(photo.image),
                  title: Text(photo.title),
                );
              }
          ),
        )
    );
  }

  Future<void> productfetchdata() async {
    final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if(response.statusCode == 200) {
      final productJson = jsonDecode(response.body);

      setState(() {
        _product = List<Product>.from(productJson.map((productJson) => Product.fromJson(productJson)));
      });
    } else {
      throw Exception("failed to load");
    }
  }
}