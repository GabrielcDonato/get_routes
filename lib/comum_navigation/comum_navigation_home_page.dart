import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/comum_navigation/off/off_home_page.dart';
import 'package:get_routes/comum_navigation/to/to_home_page.dart';

import 'back/back_home_page.dart';

class ComumNavigationHomePage extends StatelessWidget {
  const ComumNavigationHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comum Navigation HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const ToHomePage());
              },
              child: const Text("To (push)"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const BackHomePage());
              },
              child: const Text("Back (pop)"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const OffHomePage());
              },
              child: const Text("Off (****)"),
            ),
          ],
        ),
      ),
    );
  }
}
