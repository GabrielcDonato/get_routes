import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off_page1.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off HomePage'),
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
                      return const OffPage1();
                    },
                  ),
                );
              },
              child: const Text(
                "Got to page 1 with native flutter",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffPage1());
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
