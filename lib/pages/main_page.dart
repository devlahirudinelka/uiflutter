import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/home_page.dart';
import 'package:flutter_learn/pages/profile_page.dart';
import 'package:flutter_learn/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_favorite.svg'),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_add.svg'),
            label: 'Add Post',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_messages.svg'),
            label: 'Massage',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_user.svg'),
            label: 'User',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.primary,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text("Favorite"),
    ),
    Center(
      child: Text("Add Post"),
    ),
    Center(
      child: Text("Chat"),
    ),
    ProfilePage()
  ];
}
