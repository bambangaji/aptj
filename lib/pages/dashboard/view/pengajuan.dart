import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:satgas/component/baseScaffold.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/pages/dashboard/controller/DashboardController.dart';

class PengajuanPage extends GetView<DashboardController> {
  const PengajuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => CustomScaffold().baseScaffold(context,
            isBack: true,
            isSearchBar: false,
            title: "PENGAJUAN",
            child: Container(
                height: Get.height,
                width: Get.width,
                color: Warna.softWhite,
                child: Column(children: [
                  Container(
                    height: 50,
                    width: Get.width,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * 0.06),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All Status',
                                    style: TextStyle(color: Warna.biruTua),
                                  ),
                                  Icon(Icons.keyboard_arrow_down_sharp)
                                ],
                              ),
                              style: OutlinedButton.styleFrom(
                                  elevation: 5.0,
                                  backgroundColor: Warna.white,
                                  side: const BorderSide(
                                      color: Colors.transparent, width: 1.1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  fixedSize: Size(Get.width * 0.4, 20)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All Date',
                                    style: TextStyle(color: Warna.biruTua),
                                  ),
                                  Icon(Icons.keyboard_arrow_down_sharp)
                                ],
                              ),
                              style: OutlinedButton.styleFrom(
                                  elevation: 5.0,
                                  backgroundColor: Warna.white,
                                  side: const BorderSide(
                                      color: Colors.transparent, width: 1.1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  fixedSize: Size(Get.width * 0.4, 20)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      // height: 200,
                      width: Get.width,
                      child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText()
                                          .titleTextWithoutBold("18 Sep 2022"),
                                      Container(
                                        width: 85,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: Warna.ijo4),
                                        child: Center(
                                          child: CustomText().titleText(
                                              "Sukses",
                                              textColor: Warna.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                CustomText().titleText("INV123/1234/123123",
                                    fontSize: 17),
                                Divider(
                                  thickness: 1.2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CustomText()
                                            .titleText("Total Pengajuan :"),
                                        CustomText().titleText(
                                            "  Rp. 3.200.000",
                                            fontSize: 16),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward)
                                    // Container(
                                    //   width: 70,
                                    //   height: 25,
                                    //   decoration: BoxDecoration(
                                    //       borderRadius:
                                    //           BorderRadius.circular(2),
                                    //       color: Warna.ijo4),
                                    //   child: Center(
                                    //     child: CustomText()
                                    //         .titleTextWithoutBold("Sukses",
                                    //             textColor: Warna.white),
                                    //   ),
                                    // )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      // height: 200,
                      width: Get.width,
                      child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText()
                                          .titleTextWithoutBold("18 Sep 2022"),
                                      Container(
                                        width: 85,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: Warna.softKuning2),
                                        child: Center(
                                          child: CustomText().titleText(
                                              "Menunggu",
                                              textColor: Warna.softBlack),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                CustomText().titleText("INV123/1234/123123",
                                    fontSize: 17),
                                Divider(
                                  thickness: 1.2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CustomText().titleTextWithoutBold(
                                            "Total Pengajuan :"),
                                        CustomText().titleText(
                                            "  Rp. 3.200.000",
                                            fontSize: 16),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward)
                                    // Container(
                                    //   width: 70,
                                    //   height: 25,
                                    //   decoration: BoxDecoration(
                                    //       borderRadius:
                                    //           BorderRadius.circular(2),
                                    //       color: Warna.ijo4),
                                    //   child: Center(
                                    //     child: CustomText()
                                    //         .titleTextWithoutBold("Sukses",
                                    //             textColor: Warna.white),
                                    //   ),
                                    // )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      // height: 200,
                      width: Get.width,
                      child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText()
                                          .titleTextWithoutBold("18 Sep 2022"),
                                      Container(
                                        width: 85,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: Warna.softKuning2),
                                        child: Center(
                                          child: CustomText().titleText(
                                              "Menunggu",
                                              textColor: Warna.softBlack),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                CustomText().titleText("INV123/1234/123123",
                                    fontSize: 17),
                                Divider(
                                  thickness: 1.2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CustomText().titleTextWithoutBold(
                                            "Total Pengajuan :"),
                                        CustomText().titleText(
                                            "  Rp. 3.200.000",
                                            fontSize: 16),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward)
                                    // Container(
                                    //   width: 70,
                                    //   height: 25,
                                    //   decoration: BoxDecoration(
                                    //       borderRadius:
                                    //           BorderRadius.circular(2),
                                    //       color: Warna.ijo4),
                                    //   child: Center(
                                    //     child: CustomText()
                                    //         .titleTextWithoutBold("Sukses",
                                    //             textColor: Warna.white),
                                    //   ),
                                    // )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  )
                ]))));
  }
}
