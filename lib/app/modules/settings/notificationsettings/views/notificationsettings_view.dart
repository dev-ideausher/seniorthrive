import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notificationsettings_controller.dart';

class NotificationsettingsView extends GetView<NotificationsettingsController> {
  const NotificationsettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotificationsettingsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NotificationsettingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
