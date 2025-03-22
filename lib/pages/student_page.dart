import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentPage extends GetView<StudentPageController> {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(child: Text('This is the Student Page')),
    );
  }
}

class StudentPageController extends GetxController {}

class StudentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StudentPageController>(StudentPageController());
  }
}
