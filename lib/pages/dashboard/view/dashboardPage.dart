import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:satgas/component/card.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/component/customWidget.dart';
import 'package:satgas/component/localNotification.dart';
import 'package:satgas/pages/dashboard/controller/DashboardController.dart';
import 'package:satgas/pages/dashboard/view/darurat.dart';
import 'package:satgas/pages/dashboard/view/pengajuan.dart';
import 'package:satgas/pages/login/view/Pin.dart';
import 'package:satgas/pages/panic/view/map.dart';
import 'package:satgas/pages/panic/view/panicPage.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => Scaffold(
              // appBar: AppBar(
              //   elevation: 0,
              //   // leading: Text("sd"),
              //   title: Text("SATGAS"),
              //   centerTitle: true,
              //   automaticallyImplyLeading: false,
              //   backgroundColor: Warna.biruCold,
              //   actions: [
              //     // GestureDetector(
              //     //   onTap: () {
              //     //     controller.goToNotification();
              //     //   },
              //     //   child: Padding(
              //     //     padding: const EdgeInsets.all(8.0),
              //     //     child: Stack(
              //     //       children: [
              //     //         Container(
              //     //           width: 50,
              //     //           height: 50,
              //     //           child: Padding(
              //     //             padding: const EdgeInsets.only(right: 6.0),
              //     //             child: Row(
              //     //               mainAxisAlignment: MainAxisAlignment.end,
              //     //               children: [Icon(Icons.notifications_active)],
              //     //             ),
              //     //           ),
              //     //         ),
              //     //         Positioned(
              //     //           top: 0,
              //     //           right: 0,
              //     //           child: Container(
              //     //             width: 17,
              //     //             height: 17,
              //     //             decoration: BoxDecoration(
              //     //                 color: Colors.red,
              //     //                 borderRadius: BorderRadius.circular(100)),
              //     //             child: Padding(
              //     //               padding: const EdgeInsets.all(2.0),
              //     //               child: Center(
              //     //                 // padding: const EdgeInsets.all(0.0),
              //     //                 child:
              //     //                     Text("2", style: TextStyle(fontSize: 12)),
              //     //               ),
              //     //             ),
              //     //           ),
              //     //         )
              //     //       ],
              //     //     ),
              //     //   ),
              //     // )
              //   ],
              // ),
              // floatingActionButtonLocation:
              //     FloatingActionButtonLocation.centerDocked,
              // bottomNavigationBar: BottomAppBar(
              //   color: Warna.biruCold,
              //   shape: CircularNotchedRectangle(), //shape of notch
              //   notchMargin:
              //       3, //notche margin between floating button and bottom appbar
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 5.0),
              //     child: Row(
              //       //children inside bottom appbar
              //       mainAxisSize: MainAxisSize.max,
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Container(
              //             height: 45,
              //             child: Column(
              //               children: [
              //                 Icon(
              //                   Icons.home,
              //                   color: Warna.white,
              //                 ),
              //                 CustomText().titleText("Home",
              //                     textColor: Warna.white, fontSize: 13)
              //               ],
              //             )),
              //         GestureDetector(
              //           onTap: () {
              //             Get.to(PengajuanPage());
              //           },
              //           child: Container(
              //               height: 45,
              //               child: Column(
              //                 children: [
              //                   Icon(
              //                     Icons.list_alt_outlined,
              //                     color: Warna.white,
              //                   ),
              //                   CustomText().titleText("Pengajuan",
              //                       textColor: Warna.white, fontSize: 13)
              //                 ],
              //               )),
              //         ),
              //         Container(
              //             height: 45,
              //             child: Column(
              //               children: [
              //                 Icon(
              //                   Icons.person,
              //                   color: Warna.white,
              //                 ),
              //                 CustomText().titleText("Profile",
              //                     textColor: Warna.white, fontSize: 13)
              //               ],
              //             )),
              //       ],
              //     ),
              //   ),
              // ),
              body: Container(
                color: Colors.white,
                width: Get.width,
                height: Get.height,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Container(
                            width: Get.width,
                            // color: Warna.white,
                            // height: 60,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child:
                                            Image.asset("lib/assets/jhon.png"),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Warna.ijo3,
                                                size: 13,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              CustomText().titleTextWithoutBold(
                                                  "Sedang Bertugas",
                                                  // textColor: Warna.softSilver,
                                                  fontSize: 12),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          CustomText()
                                              .titleText("Hi, Jhon Doe "),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          CustomText().titleText(
                                              // textAlign: TextAlign.center,
                                              "712312534953845",
                                              fontWeight: FontWeight.normal),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(DaruratPage());
                                        },
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Warna.red3,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Warna.red3
                                                        .withOpacity(0.7),
                                                    offset: const Offset(
                                                      0.0,
                                                      0.0,
                                                    ),
                                                    blurRadius: 1.0,
                                                    spreadRadius: 6.0,
                                                  ), //BoxShadow
                                                  BoxShadow(
                                                    color: Colors.white,
                                                    offset:
                                                        const Offset(0.0, 0.0),
                                                    blurRadius: 0.0,
                                                    spreadRadius: 0.0,
                                                  ),
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Icon(
                                                Icons.call,
                                                color: Warna.white,
                                                size: 27,
                                              ),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      CustomText().titleTextWithoutBold(
                                          "Panggilan sos Aktif",
                                          // textColor: Warna.softSilver,
                                          fontSize: 12),
                                    ],
                                  )
                                  // CustomText().titleText("25 KM")
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 8.0),
                        //   child: Container(
                        //     width: Get.width,
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         CustomText().titleText("Pengajuan Terbaru",
                        //             fontSize: 20),
                        //         customCard().cardBlueWidget(
                        //           Row(
                        //             children: [
                        //               CustomText().titleText(
                        //                   fontWeight: FontWeight.w600,
                        //                   textColor: Warna.white,
                        //                   "Lihat Semua"),
                        //               Icon(
                        //                 Icons.chevron_right_sharp,
                        //                 color: Colors.white,
                        //               )
                        //             ],
                        //           ),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 15),
                        //   child: Card(
                        //     elevation: 0,
                        //     shape: RoundedRectangleBorder(
                        //         side: BorderSide(
                        //           color: Warna.silver,
                        //         ),
                        //         borderRadius: BorderRadius.circular(10)),
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(10.0),
                        //       child: Row(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           Column(
                        //             crossAxisAlignment:
                        //                 CrossAxisAlignment.start,
                        //             children: [
                        //               CustomText().titleText(
                        //                   "Today, 27/09/2022",
                        //                   fontSize: 14,
                        //                   textColor: Warna.softSilver),
                        //               Padding(
                        //                 padding: const EdgeInsets.symmetric(
                        //                     vertical: 8.0),
                        //                 child: CustomText().titleText(
                        //                     "INV123/1234/123123",
                        //                     fontSize: 14,
                        //                     textColor: Warna.softBlack,
                        //                     fontWeight: FontWeight.normal),
                        //               ),
                        //               CustomText().titleText(
                        //                   "Pengaju : Jhon Doe",
                        //                   fontSize: 14,
                        //                   textColor: Warna.softBlack,
                        //                   fontWeight: FontWeight.normal)
                        //             ],
                        //           ),
                        //           Column(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceBetween,
                        //             children: [
                        //               customCard().cardWidget(
                        //                   CustomText().titleText("Menunggu",
                        //                       textColor: Warna.white,
                        //                       fontSize: 14),
                        //                   colorBg: Warna.softBlack,
                        //                   colorBorder: Colors.transparent),
                        //               Padding(
                        //                 padding:
                        //                     const EdgeInsets.only(top: 8.0),
                        //                 child: CustomText().titleText(
                        //                   "Rp. 15.000.000",
                        //                   fontSize: 14,
                        //                   textColor: Warna.softBlack,
                        //                 ),
                        //               )
                        //             ],
                        //           )
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(PengajuanPage());
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      // height: 40,
                                      decoration: BoxDecoration(
                                          color: Warna.softBiru,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: Image.asset(
                                            'lib/assets/intermediate.png',
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                        width: 68,
                                        child: CustomText()
                                            .titleTextWithoutBold(
                                                textAlign: TextAlign.center,
                                                "Pengajuan Claim"))
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Container(
                                      // height: 40,
                                      decoration: BoxDecoration(
                                          color: Warna.softBiru,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: Image.asset(
                                            'lib/assets/history.png',
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                        width: 65,
                                        child: CustomText()
                                            .titleTextWithoutBold(
                                                "Riwayat Laporan",
                                                textAlign: TextAlign.center))
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Container(
                                      // height: 40,
                                      decoration: BoxDecoration(
                                          color: Warna.softBiru,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: Image.asset(
                                            'lib/assets/writing.png',
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText().titleTextWithoutBold("Laporan")
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Get.to(profilePage());
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      // height: 40,
                                      decoration: BoxDecoration(
                                          color: Warna.softBiru,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Icon(
                                          Icons.person_outline,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText().titleTextWithoutBold("Akun")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1.2,
                          color: Warna.softSilver,
                        ),
                        CustomText().titleText("Ringkasan Area Penugasan",
                            fontSize: 18),
                        SizedBox(
                          height: 8,
                        ),
                        Column(
                          children: [
                            customCard().cardWidget(
                                Container(
                                  width: Get.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText().titleText(
                                              "Tol Jor Cikampek",
                                              fontSize: 15),
                                          CustomText().titleTextWithoutBold(
                                              "Waktu",
                                              textColor: Warna.abuMuda)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText().titleTextWithoutBold(
                                              "Suspect Kecelakaan",
                                              textColor: Warna.red),
                                          CustomText()
                                              .titleTextWithoutBold("5 min ago")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                colorBg: Warna.white,
                                colorBorder: Warna.red),
                            customCard().cardWidget(
                                Container(
                                  width: Get.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText().titleText(
                                              "Tol Lingkar Luar",
                                              fontSize: 15),
                                          CustomText().titleTextWithoutBold(
                                              "Waktu",
                                              textColor: Warna.abuMuda)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText().titleTextWithoutBold(
                                              "Lancar",
                                              textColor: Warna.ijo4),
                                          CustomText()
                                              .titleTextWithoutBold("5 min ago")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                colorBg: Warna.white,
                                colorBorder: Warna.softSilver),
                            customCard().cardWidget(
                                Container(
                                  width: Get.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText().titleText(
                                              "Tol Padalarang",
                                              fontSize: 15),
                                          CustomText().titleTextWithoutBold(
                                              "Waktu",
                                              textColor: Warna.abuMuda)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText().titleTextWithoutBold(
                                              "Terjadi Kemacetan",
                                              textColor: Warna.orange),
                                          CustomText()
                                              .titleTextWithoutBold("5 min ago")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                colorBg: Warna.white,
                                colorBorder: Warna.softSilver)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText().titleTextWithoutBold("Lihat Semua  "),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: Warna.biru,
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText()
                                .titleText("Laporan Terupdate", fontSize: 18),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: CustomText().titleTextWithoutBold(
                                    "Lihat Semua  ",
                                    fontSize: 16)),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 150,
                          width: Get.width,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("lib/assets/report1.png"),
                                      CustomText()
                                          .titleText("Tol Lingkar Luar KM 132"),
                                      CustomText().titleTextWithoutBold(
                                          "10 Oct 22 13:59")
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("lib/assets/report1.png"),
                                      CustomText()
                                          .titleText("Tol Lingkar Luar KM 132"),
                                      CustomText().titleTextWithoutBold(
                                          "10 Oct 22 13:59")
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("lib/assets/report1.png"),
                                      CustomText()
                                          .titleText("Tol Lingkar Luar KM 132"),
                                      CustomText().titleTextWithoutBold(
                                          "10 Oct 22 13:59")
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("lib/assets/report1.png"),
                                      CustomText()
                                          .titleText("Tol Lingkar Luar KM 132"),
                                      CustomText().titleTextWithoutBold(
                                          "10 Oct 22 13:59")
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("lib/assets/report1.png"),
                                      CustomText()
                                          .titleText("Tol Lingkar Luar KM 132"),
                                      CustomText().titleTextWithoutBold(
                                          "10 Oct 22 13:59")
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
