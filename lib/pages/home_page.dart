// ignore_for_file: non_constant_identifier_names, must_be_immutable, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutter_learn/components/post_item.dart';
import 'package:flutter_learn/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        // elevation: 0,
        centerTitle: false,
        title: const Text('5minuteflutter'),
        actions: const [
          Icon(
            Icons.location_on_outlined,
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 24,
          );
        },
      ),
    );
  }

  // Widget _UserItem() {
  //   return Row(
  //     children: [
  //       Image.asset(
  //         'assets/temp/tempOne.png',
  //         width: 40,
  //         height: 40,
  //       ),
  //       const SizedBox(
  //         width: 16,
  //       ),
  //       const Text(
  //         'Sarah Feyoz',
  //         style: AppText.subtitle3,
  //       )
  //     ],
  //   );
  // }

  mockUsersFromServer() {
    for (var i = 0; i < 1000; i++) {
      users.add('User Name $i');
    }
    return users;
  }
}
