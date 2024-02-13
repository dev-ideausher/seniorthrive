import 'package:flutter/cupertino.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class FaqController extends GetxController {
  //TODO: Implement FaqController

  final count = 0.obs;
  final TextEditingController searchController = TextEditingController();
  final FlutterTts flutterTts = FlutterTts();
  final List<String> title = [
    'How does Senior Thrive work?',
    'How to scan home?',
    'How do I contact a local vendor?',
    'What is loyalty program ?'
  ];
  final List<String> description = [
    'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years.'
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void speakText(String text) async {
    print('dddddddddddddddddddddd');
    await flutterTts.setLanguage('en-US');
    await flutterTts
        .setSpeechRate(0.5); // Set the speech rate (adjust as needed)
    await flutterTts.setPitch(1.0); // Set the pitch (adjust as needed)
    await flutterTts.speak(text);
  }
}
