import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  //const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(top: 30, bottom: 50),
        width: double.infinity,
        height: 400,
        color: Colors.red,
      ),
    );
  }
}
