import 'dart:ui';

class Product {
  String title;
  double price;
  String? description;
  Image? image;
  String? category;

  Product({
    required this.title,
    required this.price,
    this.description,
    this.image,
    this.category
  });

  factory Product.FromJson(Map<String, dynamic> map){
    return Product(
        title: map['title'],
        price: map['price'],
        description: map['description'],
        image: map['image'],
        category: map['category']);
  }


  Map<String, dynamic> toJson(){
    return{
      'title' : title,
      'price' : price,
      'description' : description,
      'image' : image,
      'category' : category
    };

  }
}