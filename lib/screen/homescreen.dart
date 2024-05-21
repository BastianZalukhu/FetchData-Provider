import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/item_widget.dart';
import 'package:flutter_application_2/provider/provider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: Consumer<ProviderProduct>(
        builder: (context, value, child) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.60, mainAxisExtent: 400),
            itemBuilder: (context, index) {
              return ItemWidget(product: value.products[index]);
            },
            itemCount: value.products.length,
          );
        },
      ),
    );
  }
}
