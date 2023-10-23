import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models/ProfuctAPI.dart';


class ProductData extends StatefulWidget {
  const ProductData({super.key});

  @override
  ProductAPIData createState() => ProductAPIData();
}

class ProductAPIData extends State<ProductData> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<State> key = GlobalKey<State>();

  List<Product> _product = [];

  @override
  void initState() {
    super.initState();
   // productFetchData();
    productDataDio();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
                "Store",
              style: TextStyle(
               fontSize: 20,fontWeight: FontWeight.w700
              ),
            ),
          ),
          body: ListView.builder(
              itemCount: _product.length,
              itemBuilder: (context, index) {
                final photo = _product[index];
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(photo.id.toString()),
                      Text(photo.category),
                      Image.network(photo.image),
                      const SizedBox(height: 5),
                      Text(photo.title),
                      Row(
                        children: [
                          const Icon(Icons.currency_rupee,size: 18),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(photo.price.toString()),
                          ),
                        ],
                      ),
                      Text(photo.description,style: const TextStyle(fontSize: 8),),
                      Text(photo.rating.getFormattedRating()),
                      const SizedBox(height: 20),
                      const Divider(color: Colors.grey,height: 10,thickness: 1),
                    ],
                  ),
                );
              }
          ),
        )
    );
  }

  //Using http
  Future<void> productFetchData() async {
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

  //Using dio
  Future<void> productDataDio() async {
    final dio = Dio();
    final response = await dio.get("https://fakestoreapi.com/products");

    if (response.statusCode == 200) {
      final productJson = response.data;

      setState(() {
        _product = List<Product>.from(productJson.map((productJson) => Product.fromJson(productJson)));
      });
    } else {
      throw Exception("failed to load");
    }
  }

  }