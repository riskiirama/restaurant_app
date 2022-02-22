import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/controllers/welcome_controller.dart';
import 'package:restaurant/utils/colors.dart';

class WelcomePage extends StatelessWidget {
  final welcomeController = Get.put(WelcomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: welcomeController.screens[welcomeController.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.mainColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: welcomeController.currentIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
              ),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            welcomeController.currentIndex.value = index;
          },
        ),
      );
    });
  }
}
