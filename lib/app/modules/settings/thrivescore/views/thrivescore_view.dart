import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/thrivescore_controller.dart';

class ThrivescoreView extends GetView<ThrivescoreController> {
  const ThrivescoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThrivescoreView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ThrivescoreView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
