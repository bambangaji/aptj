import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satgas/component/baseScaffold.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/component/customWidget.dart';
import 'package:satgas/component/localNotification.dart';
import 'package:satgas/pages/dashboard/controller/DashboardController.dart';
import 'package:satgas/pages/login/view/Pin.dart';
import 'package:satgas/pages/panic/view/map.dart';

class DaruratPage extends GetView<DashboardController> {
  const DaruratPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) {
          var customText = CustomText();
          return CustomScaffold().baseScaffold(context,
              isBack: true,
              isSearchBar: false,
              title: "PANGGILAN DARURAT",
              child: Container(
                height: Get.height,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          CustomText().titleText("Penugasan Keadaan Darurat",
                              fontSize: 18),
                          SizedBox(
                            height: 12,
                          ),
                          DottedBorder(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: Get.width * 0.2,
                                        child:
                                            CustomText().titleText("Lokasi")),
                                    CustomText().titleText(
                                        "Tol lingkar luar km 17, dki jakarta"),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: Get.width * 0.2,
                                          child:
                                              CustomText().titleText("Status")),
                                      CustomText().titleText("Level 1"),
                                    ],
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: Get.width * 0.2,
                                        child: CustomText()
                                            .titleText("Estimasi Jarak")),
                                    CustomText().titleText("126 KM"),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: Get.width * 0.2,
                                          child: CustomText()
                                              .titleText("Catatan")),
                                      Container(
                                        width: Get.width * 0.6,
                                        child: customText.titleText(
                                            "lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet"),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                      Container(
                        width: Get.width,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Warna.orange,
                              side: BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            onPressed: () {
                              localNotificatonCustom().displayNotification(
                                  title:
                                      "Terjadi kecelkaan di Tol Lingkar Luar,DIK Jakarta",
                                  body:
                                      "Harap menuju ke lokasi kejadian segera!");
                              CustomWidget().customAlert(
                                  "Laporan sudah di terima",
                                  Icons.check,
                                  Warna.abuMuda);
                              Get.to(PinPage());
                            },
                            child: CustomText()
                                .titleText("OK", textColor: Warna.softBlack)),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}
