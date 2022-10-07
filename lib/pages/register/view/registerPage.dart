import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/component/customWidget.dart';
import 'package:satgas/main_controller.dart';


class RegisterPage extends GetView<MainController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        init: MainController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text("Register", style: TextStyle(color: Colors.black)),
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(
                  color: Warna.softBlack, // <-- SEE HERE
                ),
              ),
              resizeToAvoidBottomInset: true,
              backgroundColor: Warna.softWhite,
              body: Stack(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height: Get.height,
                      width: Get.width,
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                                width: Get.width,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      Get.height / 20,
                                      Get.height / 40,
                                      Get.height / 15,
                                      Get.height / 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText()
                                          .titleText("Identity Card (KTP) "),
                                      SizedBox(height: 8),
                                      GestureDetector(
                                        onTap: () {
                                          print("sad");
                                          controller.showPicker(context);
                                        },
                                        child: Container(
                                          child: CustomWidget.customTextField(
                                              readOnly: true,
                                              callback: () {
                                                controller.showPicker(context);
                                              },
                                              controller:
                                                  controller.ktpController,
                                              hintText: "2352635263563",
                                              bgColor: Warna.grey),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      CustomText().titleText("Name"),
                                      SizedBox(height: 8),
                                      CustomWidget.customTextField(
                                          controller: controller.nameController,
                                          hintText: "Joe Super",
                                          readOnly: true,
                                          bgColor: Warna.grey),
                                      SizedBox(height: 8),
                                      CustomText().titleText("Email"),
                                      SizedBox(height: 8),
                                      CustomWidget.customTextField(
                                          controller:
                                              controller.emailController,
                                          hintText: "Email@Test.com",
                                          bgColor: Warna.grey),
                                      SizedBox(height: 15),
                                      CustomText().titleText("Password"),
                                      SizedBox(height: 8),
                                      CustomWidget.customTextField(
                                          controller:
                                              controller.passwordController,
                                          hintText: "Password",
                                          obsecureText: true,
                                          bgColor: Warna.grey),
                                      SizedBox(height: 8),
                                      CustomText()
                                          .titleText("Re-Type Password"),
                                      SizedBox(height: 8),
                                      CustomWidget.customTextField(
                                          controller:
                                              controller.repasswordController,
                                          hintText: "Password",
                                          obsecureText: true,
                                          bgColor: Warna.grey),
                                      SizedBox(height: 8),
                                    ],
                                  ),
                                )),
                            Container(
                                width: Get.width,
                                child: Padding(
                                  padding: EdgeInsets.all(Get.height / 15),
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Warna.softBiruMuda,
                                        side: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Register",
                                        style:
                                            TextStyle(color: Warna.softWhite),
                                      )),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
