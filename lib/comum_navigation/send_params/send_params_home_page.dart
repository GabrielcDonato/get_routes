import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/comum_navigation/send_params/send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Params'),
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
                      return const SendParamsPage1();
                    },
                    settings: RouteSettings(
                      arguments: "PARAMETER WITH NATIVE FLUTTER"
                      // arguments: {} // ele aceita um Object, ou seja posso mandar um json, string, um objeto meu, qualquer coisa
                      ,
                    ),
                  ),
                );
              },
              child: const Text(
                "Got to page 1 with native flutter",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(const SendParamsPage1(),
                    arguments: "PARAMETER WITH GETX");
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
