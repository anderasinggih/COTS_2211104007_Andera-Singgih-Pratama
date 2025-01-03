import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_pages.dart'; // Pastikan file ini ada dan berisi rute yang benar

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COTS App',
      initialRoute: AppRoutes.INITIAL, // Rute pertama yang dijalankan
      getPages: AppPages.routes, // Daftar semua rute
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto', // Atur font sesuai kebutuhan
      ),
    );
  }
}
