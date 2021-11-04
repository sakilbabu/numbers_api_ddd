import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView {
  HomePage({Key? key}) : super(key: key);
  final submit = TextEditingController();
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
            controller: submit,
          ),
          ElevatedButton(
            onPressed: () async {
              await controller.submitStates();
            },
            child: const Text('Submit'),
          ),
          Expanded(
            child: Column(
              children: [
                Obx(() => controller.value == null
                    ? Text("you are yet to submit a year code")
                    : Text(controller.value!)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
