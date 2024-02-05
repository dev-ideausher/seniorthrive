import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/subscriptionsettings_controller.dart';

class SubscriptionsettingsView extends GetView<SubscriptionsettingsController> {
  const SubscriptionsettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SubscriptionsettingsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SubscriptionsettingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
