import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsPage1 extends StatelessWidget {
  const SendParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paramNative =
        ModalRoute.of(context)?.settings.arguments ?? "Param dont send";

    final paramGetx = Get.arguments ?? "Param dont send";

    return Scaffold(
      appBar: AppBar(
        title: const Text('receiving params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Native: $paramNative"),
            Text("Get $paramGetx"),
          ],
        ),
      ),
    );
  }
}
