import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satgas/component/baseScaffold.dart';
import 'package:satgas/component/card.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/pages/dashboard/controller/DashboardController.dart';

class NotificationPage extends GetView<DashboardController> {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => CustomScaffold().baseScaffold(
              context,
              isBack: true,
              isSearchBar: false,
              title: "Notification",
              child: Container(
                height: Get.height,
                width: Get.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: customCard().cardWidget(
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText().titleText("SOS CALLING...",
                                      fontSize: 18),
                                  CustomText().titleText("10:00"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: CustomText().titleTextWithoutBold(
                                            "Telah terjadi panggilan SOS pada ",
                                            fontSize: 16),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, bottom: 8),
                                        child: Row(
                                          children: [
                                            CustomText().titleText(
                                                "Tol Lingkar Luar KM 17 ",
                                                fontSize: 16),
                                            CustomText().titleTextWithoutBold(
                                                "dengan kendaraan ",
                                                fontSize: 16),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          CustomText().titleTextWithoutBold(
                                              "Toyota Alphard",
                                              fontSize: 16),
                                          CustomText().titleText(" B 1234 CDF",
                                              fontSize: 16),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Center(
                                      child: Container(
                                    child: Icon(Icons.info_rounded,
                                        color: Colors.redAccent[200], size: 50),
                                  )),
                                ],
                              ),
                            ],
                          ),
                          colorBg: Warna.softPink,
                          colorBorder: Warna.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: customCard().cardWidget(
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText().titleText("Claim Approved",
                                      fontSize: 18),
                                  CustomText().titleText("26 Sept 2022"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Row(
                                          children: [
                                            CustomText().titleTextWithoutBold(
                                                "Your order",
                                                fontSize: 16),
                                            CustomText().titleText(
                                                " INV/20220306/MPL/2107776522",
                                                fontSize: 16,
                                                textColor: Warna.red),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: CustomText()
                                            .titleTextWithoutBold(
                                                "Has benn approved ",
                                                fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          colorBg: Warna.white,
                          colorBorder: Warna.softBlack),
                    ),
                  ],
                ),
              ),
            ));
  }
}
