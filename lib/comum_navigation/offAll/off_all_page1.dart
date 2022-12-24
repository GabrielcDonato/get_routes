import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/comum_navigation/offAll/off_all_page2.dart';

class OffAllPage1 extends StatelessWidget {
  const OffAllPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
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
                      return const OffAllPage2();
                    },
                  ),
                );
              },
              child: const Text(
                "Got to page 2 with native flutter",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffAllPage2());
              },
              child: const Text(
                "Got to page 2 with GetX",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
