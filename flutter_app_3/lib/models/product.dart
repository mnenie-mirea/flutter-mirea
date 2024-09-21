import 'package:uuid/uuid.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final String category;
  final String imgUrl;
  final int price;
  final int? oldPrice;

  Product(this.title, this.description, this.category, this.price,
      this.oldPrice, this.imgUrl,
      {String? id})
      : id = id ?? const Uuid().v1();
}
