import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:satgas/component/baseScaffold.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/pages/panic/controller/panic_controller.dart';
import 'package:satgas/pages/register/view/registerPage.dart';

class PanicPage extends GetView<PanicController> {
  const PanicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PanicController>(
        init: PanicController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => CustomScaffold().baseScaffold(context,
            appBar: true,
            isBack: true,
            isSearchBar: false,
            title: "Emergency",
            child: Container(
              height: Get.height,
              width: Get.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width / 1.2,
                    child: CustomText().titleText(
                        "Emergency call will be activated,please wait and do this feature respectedly",
                        textColor: Warna.softBlack,
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: Get.width / 1.4,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText().titleText("Countdown", fontSize: 18),
                        CustomText().titleText("5", fontSize: 68)
                      ],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/assets/telephone.png"))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: Get.width / 1.3,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Warna.abuMuda,
                          side:
                              BorderSide(color: Colors.transparent, width: 1.0),
                        ),
                        onPressed: () {},
                        child: CustomText()
                            .titleText("SEND SOS", textColor: Warna.white)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(color: Warna.softBlack, fontSize: 12),
                        text: "I see an accident and wait to report.",
                        children: <TextSpan>[
                          TextSpan(
                              text: "  Click Here",
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
            )));
  }
}
