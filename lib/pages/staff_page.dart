import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StaffPage extends GetView<StaffPageController> {
  const StaffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(child: Text('This is the Staff Page')),
    );
  }
}

class StaffPageController extends GetxController {}

class StaffPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StaffPageController>(StaffPageController());
  }
}
