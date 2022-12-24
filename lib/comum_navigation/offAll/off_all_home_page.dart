import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/comum_navigation/offAll/off_all_page1.dart';

class OffAllHomePage extends StatelessWidget {
  const OffAllHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage1();
                    },
                    settings: const RouteSettings(name: "Page1"),
                  ),
                );
              },
              child: const Text(
                "Got to page 1 with native flutter",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffAllPage1());
              },
              child: const Text(
                "Got to page 1 with GetX",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
