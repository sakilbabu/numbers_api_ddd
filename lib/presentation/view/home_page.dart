import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_api_ddd/presentation/controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);
  final text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter any year';
              }
              return null;
            },
            controller: text,
          ),
          ElevatedButton(
            onPressed: () async {
              await controller.submitStates();
            },
            child: const Text('Submit'),
          ),
          Column(
            children: [
              Obx(() => controller.text.value == null
                  ? const Text("you are yet to submit a year code")
                  : Text(controller.text.value!.text!)),
            ],
          )
        ],
      ),
    );
  }
}
