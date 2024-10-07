import 'package:flutter/material.dart';
import 'package:flutter_app_5/pages/product_page.dart';
import '../components/product_card.dart';
import '../mocks/products_mock.dart';
import '../pages/add_product_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void toProductPage(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductPage(
          product: products[index],
          toggleFavorite: () => setState(() {
            products[index].isFavorite = !products[index].isFavorite;
          }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Популярные товары'),
      ),
      backgroundColor: Colors.white,
      body: GridView.count(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 25),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        children: List.generate(products.length, (index) {
          return GestureDetector(
            onTap: () => toProductPage(context, index),
            child: ProductCard(product: products[index]),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddProductPage(onAddProduct: (newItem) {
                setState(() {
                  products.add(newItem);
                });
              }),
            ),
          );
        },
        foregroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
