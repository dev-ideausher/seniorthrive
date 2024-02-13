import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class HelpcenterController extends GetxController {
  //TODO: Implement HelpcenterController

  final count = 0.obs;
  final TextEditingController searchController = TextEditingController();
  RxBool isVideoPlaying = false.obs;
  RxBool isVideoLoading = true.obs;
  late VideoPlayerController videoPlayerController;
  @override
  void onInit() {
    super.onInit();
    initializeVideoPlayer();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    videoPlayerController.dispose();
  }

  void increment() => count.value++;
  Future<void> initializeVideoPlayer() async {
    try {
      // Initialize the video player controller with the video URL
      videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      );

      // Add a listener to update the isVideoPlaying state
      videoPlayerController.addListener(() {
        isVideoPlaying.value = videoPlayerController.value.isPlaying;
      });

      // Add listener to update isVideoLoading state
      videoPlayerController.addListener(() {
        isVideoLoading.value = !videoPlayerController.value.isInitialized ||
            videoPlayerController.value.isBuffering;
      });

      // Initialize the video player
      await videoPlayerController.initialize();

      // Call update to trigger a rebuild when the initialization is complete
      update();
    } catch (e) {
      print('Error initializing video player: $e');
    }
  }

  void playOrPauseVideo() {
    // Toggle play/pause based on the current state
    if (videoPlayerController.value.isPlaying) {
      videoPlayerController.pause();
    } else {
      videoPlayerController.play();
    }
  }
}
