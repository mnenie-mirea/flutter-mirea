import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Мой профиль",
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 48, 48, 48),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                width: 200,
                height: 200,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 12,
                  ),
                ),
                child: SvgPicture.network(
                  'https://pinia-ru.netlify.app/logo.svg',
                  fit: BoxFit.cover,
                  width: 12,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Александр Пешков",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "pochta@gmail.com",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "+7 999 999 99 99",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 3, 3, 3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
