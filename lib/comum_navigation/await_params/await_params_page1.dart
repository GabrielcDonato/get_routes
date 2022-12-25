import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page 1'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop("Retornando parametro por Flutter nativo");
                },
                child: const Text(
                  "Returning with param native flutter",
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.back(result: "Retornando parametro por getX");
                },
                child: const Text(
                  "Returning with param GetX",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
