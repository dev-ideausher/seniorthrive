import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:perfect_volume_control/perfect_volume_control.dart';

class AccessiblityController extends GetxController {
  //TODO: Implement AccessiblityController

  final count = 0.obs;
  RxBool switchValue = false.obs;
  RxDouble volume = 0.0.obs; // Set an initial value for volume
  final FlutterTts flutterTts = FlutterTts();
  RxDouble fontSize = 1.0.obs;
  @override
  void onInit() {
    super.onInit();
    PerfectVolumeControl.getVolume().then((value) {
      volume.value = value;
      print('volume value: $volume');
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onVolumeChanged(double value) {
    PerfectVolumeControl.setVolume(value);
  }

  void speakText(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts
        .setVolume(volume.value); // Set the volume (adjust as needed)
    await flutterTts
        .setSpeechRate(0.5); // Set the speech rate (adjust as needed)
    await flutterTts.setPitch(1.0); // Set the pitch (adjust as needed)
    await flutterTts.speak(text);
  }
}
