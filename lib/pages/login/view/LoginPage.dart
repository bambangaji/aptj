import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/component/customWidget.dart';
import 'package:satgas/main_controller.dart';
import '../../../component/sizeConfig.dart';

class LoginPage extends GetView<MainController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    controller.onInit();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GetBuilder<MainController>(
        init: MainController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => Scaffold(
              resizeToAvoidBottomInset: true,
              backgroundColor: Warna.softWhite,
              // appBar: AppBar(),
              body: Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Warna.gradientBiru,
                    Warna.gradientBiru2,
                  ],
                )),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 400,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Warna.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Padding(
                            //   padding: EdgeInsets.only(top: 0),
                            //   child: Center(
                            //       child: Container(
                            //     width: 100,
                            //     height: 100,
                            //     decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(100),
                            //         color: Warna.grey),
                            //   )),
                            // ),
                            Center(
                              child:
                                  CustomText().titleText("LOGIN", fontSize: 18),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  // Center(
                                  //   child: CustomText()
                                  //       .titleText("LOGIN", fontSize: 16),
                                  // ),
                                  SizedBox(height: 8),
                                  CustomWidget.customTextField(
                                      controller: controller.emailController,
                                      hintText: "Email",
                                      prefixIcon: Icon(
                                        Icons.mail_outline_outlined,
                                      ),
                                      padding: EdgeInsets.zero,
                                      inputBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      bgColor: Colors.transparent),

                                  SizedBox(height: 12),
                                  CustomWidget.customTextField(
                                      prefixIcon: Icon(
                                        Icons.lock_outline_rounded,
                                      ),
                                      controller: controller.passwordController,
                                      hintText: "Password",
                                      padding: EdgeInsets.zero,
                                      obsecureText: true,
                                      inputBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      bgColor: Colors.transparent),
                                  SizedBox(height: 10),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.end,
                                  //   children: [
                                  //     CustomText().titleText("FORGOT PASSWORD",
                                  //         textColor: Warna.orange)
                                  //   ],
                                  // ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Warna.abuMuda))),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 2.0),
                                            child: CustomText().titleText(
                                                "Forget Password",
                                                textColor: Warna.abuMuda,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ),
                                      // GestureDetector(
                                      //   onTap: () {
                                      //     // Get.to(() => RegisterPage());
                                      //   },
                                      //   child: Container(
                                      //     decoration: BoxDecoration(
                                      //         border: Border(
                                      //             bottom: BorderSide(
                                      //                 color: Warna.abuMuda))),
                                      //     child: Padding(
                                      //       padding: const EdgeInsets.only(
                                      //           bottom: 2.0),
                                      //       child: CustomText().titleText(
                                      //           "Account Register",
                                      //           textColor: Warna.abuMuda,
                                      //           fontWeight: FontWeight.normal),
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Column(
                              children: [
                                Container(
                                    width: Get.width,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Warna.softKuning2,
                                            side: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0),
                                          ),
                                          onPressed: () {
                                            controller.login();
                                          },
                                          child: Text(
                                            "LOGIN",
                                            style: TextStyle(
                                                color: Warna.softBlack),
                                          )),
                                    )),
                              ],
                            ),
                            // RichText(
                            //   text: TextSpan(
                            //       style: TextStyle(
                            //           color: Warna.softBlack, fontSize: 12),
                            //       text: "Didn’t have an account?",
                            //       children: <TextSpan>[
                            //         TextSpan(
                            //             text: "  Register",
                            //             recognizer: TapGestureRecognizer()
                            //               ..onTap = () {
                            //                 Get.to(() => RegisterPage());
                            //               },
                            //             style: TextStyle(
                            //                 fontWeight: FontWeight.bold,
                            //                 color: Warna.orange))
                            //       ]),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
