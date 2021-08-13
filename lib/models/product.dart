// To parse this JSON data, do
//
//     final product = productFromMap(jsonString);

import 'dart:convert';

class Product {
  Product({
    required this.available,
    required this.productName,
    this.picture,
    required this.price,
    required this.name,
  });

  bool available;
  String productName;
  String? picture;
  double price;
  String name;
  String? id;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        available: json["available"],
        productName: json["name "] == null ? null : json["name "],
        picture: json["picture"],
        price: json["price"].toDouble(),
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toMap() => {
        "available": available,
        "name ": productName == null ? null : productName,
        "picture": picture,
        "price": price,
        "name": name == null ? null : name,
      };
}
