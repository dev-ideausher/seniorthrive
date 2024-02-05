import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/contactus_controller.dart';

class ContactusView extends GetView<ContactusController> {
  const ContactusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContactusView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ContactusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
