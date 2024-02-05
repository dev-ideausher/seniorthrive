import 'package:augmented_reality_plugin/augmented_reality_plugin/init_augmented_reality_plugin.dart';
import 'package:camera/camera.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:seniorthrive/app/components/seniorThriveBottomSheet.dart';
import 'package:seniorthrive/app/routes/app_pages.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../components/common_image_view.dart';
import '../../../constants/image_constant.dart';
import '../../../services/text_style_util.dart';

class HomepageController extends GetxController {
  final carouselIndex = 1.obs;
  final CarouselController carouselController = CarouselController();
  final PageController pageController = PageController();
  List<Widget> carouselImage = [
    CommonImageView(
      imagePath: ImageConstant.pngonBoarding4,
    ),
    CommonImageView(
      imagePath: ImageConstant.pngonBoarding3,
    ),
    CommonImageView(
      imagePath: ImageConstant.pngonBoarding2,
    ),
  ];
  List<CameraDescription> allCameras = [];
  CameraController? cameraController;
  RxBool isRecording = false.obs;
  FlutterFFmpeg flutterFFmpeg = FlutterFFmpeg();

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> initializeCameraController() async {
    try {
      allCameras = await availableCameras();
      if (allCameras.isNotEmpty) {
        cameraController =
            CameraController(allCameras[0], ResolutionPreset.max);
        await cameraController!.initialize();
      } else {
        print('No available cameras.');
      }
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  Future<void> checkAndRequestCameraPermission() async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      status = await Permission.camera.request();
      if (status.isGranted) {
        await initializeCameraController();
        await _startScanning();
      } else {
        print('Camera permission denied');
      }
    } else if (status.isGranted) {
      await initializeCameraController();
      await _startScanning();
    }
  }

  _startScanning() {
    if (cameraController != null && cameraController!.value.isInitialized) {
      Get.bottomSheet(senoirThriveBottomSheet(
        onTap: () {
          Get.to(() => InitAugmentedRealityPlugin(
                cameraController!,
                childWidget: _buildCameraPreview(),
              ));
        },
      ));
    } else {
      print('Camera not initialized or not available.');
    }
  }

  Widget _buildCameraPreview() {
    RxInt pageIndex = 0.obs;
    return Material(
      child: Column(
        children: [
          Expanded(
            child: CameraPreview(
              cameraController!,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Obx(
                        () => GestureDetector(
                          onTap: () {
                            if (isRecording.value) {
                              _stopRecording();
                              print('recored ${isRecording.value}');
                            } else {
                              _startRecording();
                              print('recored ${isRecording.value}');
                            }
                            isRecording.value = !isRecording.value;
                          },
                          child: isRecording.value
                              ? Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      height: 49.kh,
                                      width: 49.kw,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(4.kw),
                                        ),
                                      ).paddingAll(14.kw),
                                    ).paddingOnly(bottom: 8.kh),
                                    Text(
                                      'Stop Scanning',
                                      style: TextStyleUtil.genSans400(
                                        fontSize: 14.kh,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ).paddingOnly(bottom: 16.kh)
                              : Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 5.kw,
                                        ),
                                      ),
                                      height: 62.kh,
                                      width: 62.kw,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                          // Change color based on recording state
                                        ),
                                      ).paddingAll(5.kw),
                                    ).paddingOnly(bottom: 8.kh),
                                    Text(
                                      'Start Scanning',
                                      style: TextStyleUtil.genSans400(
                                        fontSize: 14.kh,
                                        color: Color(0xFFC2C2C2),
                                      ),
                                    ),
                                  ],
                                ).paddingOnly(bottom: 16.kh),
                        ),
                      ),
                    ],
                  ),
                  // AlertDialog(
                  //   scrollable: true,
                  //   content: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.stretch,
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.end,
                  //         children: [
                  //           TextButton(
                  //             onPressed: () {
                  //               Get.back(); // Dismiss the AlertDialog
                  //             },
                  //             style: TextButton.styleFrom(
                  //               backgroundColor: Color(0xFFFFEFE7),
                  //             ),
                  //             child: Row(
                  //               children: [
                  //                 Text(
                  //                   'Skip',
                  //                   style: TextStyleUtil.genSans500(
                  //                     fontSize: 14.kh,
                  //                     color: Color(0xFF1741AC),
                  //                   ),
                  //                 ),
                  //                 Icon(
                  //                   Icons.chevron_right,
                  //                   color: Color(0xFF1741AC),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(
                  //         height: 400.kh,
                  //         child: PageView.builder(
                  //           itemCount: 3,
                  //           controller: pageController,
                  //           onPageChanged: (index) {
                  //             pageIndex.value = index;
                  //             print(pageIndex);
                  //           },
                  //           itemBuilder: (BuildContext context, int index) {
                  //             return Column(
                  //               children: [
                  //                 Row(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: [
                  //                     Stack(
                  //                       alignment: Alignment.center,
                  //                       children: [
                  //                         CommonImageView(
                  //                           svgPath: ImageConstant.svgEllipse,
                  //                           svgColor:
                  //                               Colors.grey.withOpacity(0.5),
                  //                         ),
                  //                         Text(
                  //                           'Illustration',
                  //                           style: TextStyleUtil.genSans400(
                  //                             fontSize: 12.kh,
                  //                             color: Colors.orange,
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ],
                  //                 ).paddingOnly(top: 36.kh),
                  //                 Text(
                  //                   "Lorem ipsum dolor sit amet consectetur.",
                  //                   textAlign: TextAlign.center,
                  //                   style: TextStyleUtil.genSans600(
                  //                     fontSize: 20.kh,
                  //                     color: Color(0xFF1741AC),
                  //                   ),
                  //                 ).paddingOnly(top: 24.kh, bottom: 4.kh),
                  //                 Text(
                  //                   "Lorem ipsum dolor sit amet consectetur. Pellentesque lorem velit eget ut. Molestie ultrices.",
                  //                   textAlign: TextAlign.center,
                  //                   style: TextStyleUtil.genSans400(
                  //                     fontSize: 12.kh,
                  //                   ),
                  //                 ).paddingOnly(bottom: 36.kh),
                  //                 pageIndex.value < 1
                  //                     ? Row(
                  //                         mainAxisAlignment:
                  //                             MainAxisAlignment.center,
                  //                         children: [
                  //                           SmoothPageIndicator(
                  //                             controller: pageController,
                  //                             count: 3,
                  //                             effect: WormEffect(
                  //                               dotWidth: 8.kw,
                  //                               dotHeight: 8.kh,
                  //                             ),
                  //                           ).paddingOnly(left: 100.kw),
                  //                           IconButton(
                  //                             onPressed: () {
                  //                               pageController.nextPage(
                  //                                 duration:
                  //                                     Duration(seconds: 1),
                  //                                 curve: Curves.linear,
                  //                               );
                  //                             },
                  //                             icon: Container(
                  //                               decoration: BoxDecoration(
                  //                                 shape: BoxShape.circle,
                  //                                 color: Color(0xFF1741AC),
                  //                               ),
                  //                               child: Icon(
                  //                                 Icons.arrow_forward,
                  //                                 color: Colors.white,
                  //                               ).paddingAll(13.kh),
                  //                             ),
                  //                           ).paddingOnly(left: 40.kw),
                  //                         ],
                  //                       )
                  //                     : seniorThiveButton(
                  //                         onPressed: () {
                  //                           Get.back(); // Dismiss the AlertDialog
                  //                           // Add your logic for starting recording here
                  //                         },
                  //                         borderRadius:
                  //                             BorderRadius.circular(32.kw),
                  //                         label: 'Start Recording',
                  //                         backgroundColor: Color(0xFF1741AC),
                  //                       ),
                  //               ],
                  //             );
                  //           },
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _startRecording() {
    cameraController!.startVideoRecording();
  }

  Future<void> _stopRecording() async {
    cameraController!.stopVideoRecording();
    Get.toNamed(Routes.PREVIEWVIDEO);
  }

  @override
  void onClose() {
    cameraController?.dispose();
    super.onClose();
  }
}
