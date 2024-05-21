import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/model.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Product Detail'),
      ),
      body: Column(
        children: [
          Text(
            product.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Image.network(
            product.images[0],
            height: 300,
            width: 300,
          ),
          SizedBox(height: 15),
          Text(
            product.description,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
