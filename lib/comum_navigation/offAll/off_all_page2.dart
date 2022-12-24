import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/comum_navigation/offAll/off_all_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage3();
                    },
                  ),
                  (route) => false,
                );
              },
              child: const Text(
                "Got to page 3 deleting all tree navigation with native flutter",
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage3();
                    },
                  ),
                  ModalRoute.withName("Page1"),
                  //return to the page that was specified
                );
              },
              child: const Text(
                "Got to page 3 deleting part of our tree navigation with native flutter",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(const OffAllPage3());
              },
              child: const Text(
                "Got to page 3 deleting all tree navigation with GetX",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(const OffAllPage3(),
                    predicate: ModalRoute.withName("/OffAllHomePage"));
              },
              child: const Text(
                "Got to page 3 deleting part of our tree navigation with GetX",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
