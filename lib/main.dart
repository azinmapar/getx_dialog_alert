import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX SnackBar'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: 'Caution',
                    titleStyle: const TextStyle(fontSize: 18.0),
                    // * message
                    middleText: 'BE CAREFUL!',
                    middleTextStyle: const TextStyle(fontSize: 16.0),
                    backgroundColor: Colors.blueGrey[100],
                    // * round edges
                    radius: 10.0,
                    // * cancel button
                    textCancel: 'Cancel',
                    onCancel: () {
                      debugPrint('Canceled');
                    },
                    cancelTextColor: Colors.green,
                    // * confirm button
                    textConfirm: 'Confirm',
                    onConfirm: () {
                      debugPrint('Confirmed');
                    },
                    confirmTextColor: Colors.blueGrey[100],
                    // * button color
                    buttonColor: Colors.green,
                    // * top on screen to dismiss
                    barrierDismissible: false,
                  );
                },
                child: const Text('See the Snackbar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
