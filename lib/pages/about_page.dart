import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About")),
      body: SafeArea(child: Column(children: [Text("About")])),
    );
  }
}

class AboutBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutPage());
  }
}
