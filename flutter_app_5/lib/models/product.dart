import 'package:uuid/uuid.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final String category;
  final String imgUrl;
  final int price;
  final int? oldPrice;
  bool isFavorite;

  Product(this.title, this.description, this.category, this.price,
      this.oldPrice, this.imgUrl, this.isFavorite,
      {String? id})
      : id = id ?? const Uuid().v1();
}
