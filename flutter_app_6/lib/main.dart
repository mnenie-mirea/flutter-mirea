import 'package:flutter/material.dart';
import 'package:flutter_app_5/pages/basket_page.dart';
import '../pages/profile_page.dart';
import '../pages/home_page.dart';
import '../pages/favorite_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            secondary: Colors.white, primary: Color.fromRGBO(255, 255, 255, 1)),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const FavoritePage(),
    const ShoppingCartScreen(),
    const ProfilePage()
  ];

  void onItemTapped(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_rounded),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Профиль',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 231, 143, 12),
        unselectedItemColor: const Color.fromARGB(255, 164, 164, 164),
      ),
    );
  }
}
