import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/comum_navigation/await_params/await_params_page1.dart';

class AwaitParamsHomePage extends StatefulWidget {
  const AwaitParamsHomePage({Key? key}) : super(key: key);

  @override
  State<AwaitParamsHomePage> createState() => _AwaitParamsHomePageState();
}

class _AwaitParamsHomePageState extends State<AwaitParamsHomePage> {
  @override
  Object resultRoute = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await Params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const AwaitParamsPage1();
                    },
                  ),
                );
                resultRoute = result;
                debugPrint(result);
                // final result = Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const AwaitParamsPage1();
                //     },
                //   ),
                // ).then((value) => value);
                // print(result);
                // resultRoute = result;
              },
              child: const Text(
                "Got to page 1 with native flutter",
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {});
              },
              child: Text("Refresh"),
            ),
            Text("$resultRoute"),
            TextButton(
              onPressed: () async {
                final result = await Get.to(const AwaitParamsPage1());
                debugPrint(result);
                print(result);
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
