import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/component/customWidget.dart';
import 'package:satgas/main_controller.dart';
import 'package:satgas/pages/register/view/registerPage.dart';


class LoginPage extends GetView<MainController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        init: MainController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => Scaffold(
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Center(
                                  child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Warna.grey),
                              )),
                            ),
                            Container(
                                width: Get.width,
                                child: Padding(
                                  padding: EdgeInsets.all(Get.height / 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomText().titleText(
                                              "FORGOT PASSWORD",
                                              textColor: Warna.orange)
                                        ],
                                      ),
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
                                        Get.find<MainController>().login();
                                      },
                                      child: Text(
                                        "Login",
                                        style:
                                            TextStyle(color: Warna.softWhite),
                                      )),
                                )),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Warna.softBlack, fontSize: 12),
                                  text: "Didn’t have an account?",
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "  Register",
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Get.to(() => RegisterPage());
                                          },
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Warna.orange))
                                  ]),
                            ),
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
