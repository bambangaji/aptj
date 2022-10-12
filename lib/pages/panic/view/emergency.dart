import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:satgas/component/baseScaffold.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/component/customWidget.dart';
import 'package:satgas/pages/panic/controller/panic_controller.dart';

class EmergencyPage extends GetView<PanicController> {
  const EmergencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PanicController>(
        init: PanicController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => CustomScaffold().baseScaffold(context,
            // appBar: true,
            appBar: true,
            isBack: true,
            isSearchBar: false,
            title: "EMERGENCY ACTION ",
            child: Container(
              width: Get.width,
              height: Get.height,
              child: Stack(
                children: [
                  Container(
                    height: Get.height / 1.2,
                    width: Get.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("lib/assets/map.png"))),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 300,
                        width: Get.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            color: Warna.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  offset: Offset(4, 1)),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(5, 5),
                                  blurRadius: 15,
                                  spreadRadius: 1),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        // CustomText().titleText(
                                        //   "Informasi Pengebudi",
                                        // ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        CustomText().titleText("JHON DOE"),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomText().titleTextWithoutBold(
                                                  "Toyota Alphard"),
                                              CustomText().titleTextWithoutBold(
                                                  "  |  B 1234 RFZ"),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                                Divider(
                                  thickness: 1.2,
                                ),
                                Row(
                                  children: [
                                    // Container(
                                    //   width: 50,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //       borderRadius:
                                    //           BorderRadius.circular(100),
                                    //       color: Warna.grey),
                                    // ),
                                    // SizedBox(
                                    //   width: 20,
                                    // ),

                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: Get.width - 50,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomText().titleTextWithoutBold(
                                                  "Lokasi"),
                                              CustomText().titleText("120KM"),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomLeft,
                                          // color: Colors.amber,
                                          width: Get.width - 50,
                                          child: CustomText().titleText(
                                              textAlign: TextAlign.center,
                                              " Tol lingkar luar km 17, dki jakarta"
                                                  .toUpperCase()),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                // Divider(thickness: 1.2),

                                Divider(thickness: 1.2),
                                SizedBox(
                                  height: 1,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Container(
                                            child: Image.asset(
                                                "lib/assets/pic.png")),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Container(
                                            child: Image.asset(
                                                "lib/assets/pic2.png")),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Container(
                                            child: Image.asset(
                                                "lib/assets/pic3.png")),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Container(
                                            child: Image.asset(
                                                "lib/assets/pic4.png")),
                                      ),
                                      Container(
                                        width: 60,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Warna.abuMuda,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Center(
                                            child: CustomText()
                                                .titleText("Lainnya")),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width,
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Warna.biru,
                                        side: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0),
                                      ),
                                      onPressed: () {
                                        // Get.to(EmergencyPage());
                                        controller.sudahDiTempat();
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.lock, color: Colors.white),
                                          CustomText().titleText("BUAT LAPORAN",
                                              textColor: Warna.white),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                  // Positioned(
                  //     top: 0,
                  //     child: Container(
                  //       width: Get.width,
                  //       color: Warna.white,
                  //       height: 60,
                  //       child: Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             Row(
                  //               children: [
                  //                 Container(
                  //                   width: 40,
                  //                   height: 40,
                  //                   decoration: BoxDecoration(
                  //                       borderRadius:
                  //                           BorderRadius.circular(100),
                  //                       color: Warna.grey),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //                 Column(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: [
                  //                     CustomText()
                  //                         .titleText("Petugas ambulans"),
                  //                     SizedBox(
                  //                       height: 4,
                  //                     ),
                  //                     CustomText().titleText(
                  //                         // textAlign: TextAlign.center,
                  //                         " Rumah Sakit Aminah",
                  //                         fontWeight: FontWeight.normal),
                  //                   ],
                  //                 ),
                  //               ],
                  //             ),
                  //             CustomText().titleText("25 KM")
                  //           ],
                  //         ),
                  //       ),
                  //     )),
                  Positioned(
                    bottom: 280,
                    child: Container(
                      width: Get.width,
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Warna.softSilver),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
