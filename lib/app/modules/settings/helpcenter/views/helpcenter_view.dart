import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/helpcenter_controller.dart';

class HelpcenterView extends GetView<HelpcenterController> {
  const HelpcenterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HelpcenterView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HelpcenterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
