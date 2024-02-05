import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/resetpasswordsetting_controller.dart';

class ResetpasswordsettingView extends GetView<ResetpasswordsettingController> {
  const ResetpasswordsettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResetpasswordsettingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResetpasswordsettingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
