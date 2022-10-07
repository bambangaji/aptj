import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:satgas/pages/dashboard/controller/DashboardController.dart';
import 'package:satgas/pages/dashboard/view/dashboardPage.dart';


class MainController extends GetxController {
  var isLoading = false.obs;
  var isLogin = false.obs;
  ImagePicker? _imagePicker;
  DashboardController getDashboardController() {
    Get.put<DashboardController>(DashboardController());
    return Get.find<DashboardController>();
  }

  login() async {
    isLogin = true.obs;
    update();
    // Get.off(DashboardPage());
    // Get.until((route) => Get.currentRoute == '/');
    // Get.until((route) => Get.currentRoute == '/dashboard');
    await getDashboardController().onBuildPage();
    Get.off(DashboardPage());
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  TextEditingController ktpController = TextEditingController();

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      final bytes = File(pickedFile.path).readAsBytesSync().lengthInBytes;
      final kb = bytes / 1024;
      final mb = kb / 1024;
      print(mb);
    }
  }

  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      final bytes = File(pickedFile.path).readAsBytesSync().lengthInBytes;
      final kb = bytes / 1024;
      final mb = kb / 1024;
      print(mb);
    }
  }

  rebuildPage() {}

  void showPicker(context) {
    print("jalan??");
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                      leading: const Icon(Icons.photo_library),
                      title: const Text('Photo Library'),
                      onTap: () {
                        _getFromGallery();
                        Navigator.of(context).pop();
                      }),
                  ListTile(
                    leading: const Icon(Icons.photo_camera),
                    title: const Text('Camera'),
                    onTap: () {
                      _getFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
