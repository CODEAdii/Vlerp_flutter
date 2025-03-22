import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AttendancePage extends GetView<AttendancePageController> {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(child: Text('This is the Attendance Page')),
    );
  }
}

class AttendancePageController extends GetxController {}

class AttendancePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AttendancePageController>(AttendancePageController());
  }
}
