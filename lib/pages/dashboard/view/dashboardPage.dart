import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:satgas/component/card.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/pages/dashboard/controller/DashboardController.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(), // INIT IT ONLY THE FIRST TIME
        builder: (_) => Scaffold(
              appBar: AppBar(
                elevation: 0,
                // leading: Text("sd"),
                title: Text("SATGAS"),
                centerTitle: true,
                automaticallyImplyLeading: false,
                backgroundColor: Warna.biruCold,
                actions: [
                  GestureDetector(
                    onTap: (){
                    controller.goToNotification();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [Icon(Icons.notifications_active)],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              width: 17,
                              height: 17,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Center(
                                  // padding: const EdgeInsets.all(0.0),
                                  child:
                                      Text("2", style: TextStyle(fontSize: 12)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),

              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
               bottomNavigationBar: BottomAppBar(
                color: Warna.biruCold,
                shape: CircularNotchedRectangle(), //shape of notch
                notchMargin:
                    3, //notche margin between floating button and bottom appbar
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    //children inside bottom appbar
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 45,
                          child: Column(
                            children: [
                              Icon(
                                Icons.home,
                                color: Warna.white,
                              ),
                              CustomText().titleText("Home",
                                  textColor: Warna.white, fontSize: 13)
                            ],
                          )),
                      Container(
                          height: 45,
                          child: Column(
                            children: [
                              Icon(
                                Icons.list_alt_outlined,
                                color: Warna.white,
                              ),
                              CustomText().titleText("Pengajuan",
                                  textColor: Warna.white, fontSize: 13)
                            ],
                          )),
                      Container(
                          height: 45,
                          child: Column(
                            children: [
                              Icon(
                                Icons.person,
                                color: Warna.white,
                              ),
                              CustomText().titleText("Profile",
                                  textColor: Warna.white, fontSize: 13)
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: customCard().cardWidget(
                          colorBg: Warna.softBlack,
                          colorBorder: Warna.red,
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                    child: Icon(
                                  Icons.phone_in_talk_rounded,
                                  color: Colors.white,
                                  size: 35,
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: CustomText().titleText(
                                            textColor: Warna.white,
                                            "SOS Scenario Aktif"),
                                      ),
                                      CustomText().titleTextWithoutBold(
                                          textColor: Warna.white,
                                          "Toll Lingkar Luar, DIK Jakarta"),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 20),
                                        child: Row(
                                          children: [
                                            CustomText().titleText(
                                                textColor: Warna.white,
                                                "120 KM  "),
                                            CustomText().titleTextWithoutBold(
                                                textColor: Warna.white,
                                                "dari lokasi anda"),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: Get.width - 105,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomText().titleText(
                                                textColor: Warna.white,
                                                "23:10"),
                                            Row(
                                              children: [
                                                CustomText().titleText(
                                                    textColor: Warna.white,
                                                    "KONFIRMASI"),
                                                Icon(
                                                  Icons.chevron_right_sharp,
                                                  color: Colors.white,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: Get.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText()
                                .titleText("Pengajuan Terbaru", fontSize: 20),
                            customCard().cardBlueWidget(
                               Row(
                                children: [
                                  CustomText().titleText(
                                    fontWeight: FontWeight.w600,
                                      textColor: Warna.white,
                                      "Lihat Semua"),
                                  Icon(
                                    Icons.chevron_right_sharp,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
