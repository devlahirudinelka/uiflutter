import 'package:flutter/material.dart';
import 'package:flutter_learn/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/tempOne.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Image.asset(
            'assets/temp/post1.jpg',
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'The sun is a daily reminder that we too can rise from the darkness, that we too can shine our own light 🌞💖',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
