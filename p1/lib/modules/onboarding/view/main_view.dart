import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p1/modules/onboarding/controller/main_controller.dart';

class MainPage extends StatelessWidget {
  final MainController controller = Get.put(MainController());

  final List<Widget> pages = [
    Center(child: Text("Home Page")),
    Center(child: Text("Promo Page")),
    Center(child: Text("Pesanan Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: controller.changeTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: "Promo"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Pesanan"),
        ],
      )),
    );
  }
}