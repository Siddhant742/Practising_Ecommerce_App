import 'package:flutter/widgets.dart';

class Product {
  String title;
  var price;
  String? description;
  ImageProvider? image;
  String? category;

  Product({
    required this.title,
    required this.price,
    this.description,
    this.image,
    this.category,
  });

  factory Product.fromJson(Map<String, dynamic> map) {
    return Product(
      title: map['title'],
      price: map['price'],
      description: map['description'],
      image: map['image'] != null ? NetworkImage(map['image']) : null,
      category: map['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'price': price,
      'description': description,
      'image': image != null ? image.toString() : null,
      'category': category,
    };
  }
}
