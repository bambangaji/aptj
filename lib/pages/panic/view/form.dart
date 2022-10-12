import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:satgas/component/baseScaffold.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/component/customWidget.dart';
import 'package:satgas/pages/panic/controller/panic_controller.dart';
import 'package:satgas/pages/register/view/registerPage.dart';

class FormBantuanPage extends GetView<PanicController> {
  const FormBantuanPage({super.key});

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
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Warna.softBlack,
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                                child: CustomText().titleText("1",
                                    fontSize: 24, textColor: Warna.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Warna.white,
                                  border: Border.all(color: Warna.softBlack),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: CustomText().titleText("2",
                                      fontSize: 24,
                                      textColor: Warna.softBlack)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Warna.white,
                                  border: Border.all(color: Warna.softBlack),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: CustomText().titleText("3",
                                      fontSize: 24,
                                      textColor: Warna.softBlack)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Warna.white,
                                  border: Border.all(color: Warna.softBlack),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: CustomText().titleText("4",
                                      fontSize: 24,
                                      textColor: Warna.softBlack)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: Get.width / 1.2,
                        child: CustomText().titleTextWithoutBold(
                            "1. Apakah plat kendaraan sesuai ?",
                            textColor: Warna.softBlack,
                            textAlign: TextAlign.left),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      ListTile(
                        title: Text(controller.JawabanA[0]),
                        contentPadding: EdgeInsets.all(0),
                        leading: Radio(
                          value: 1,
                          groupValue: controller.value,
                          onChanged: (i) {
                            print(i);
                            controller.setValue(1, 1);
                          },
                        ),
                      ),
                      ListTile(
                        title: Text("Tidak"),
                        contentPadding: EdgeInsets.all(0),
                        leading: Radio(
                          value: 2,
                          groupValue: controller.value,
                          onChanged: (i) {
                            print(i);
                            controller.setValue(2, 1);
                            // controller.setValue(value.)
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Container(
                          width: 150,
                          height: 60,
                          child: CustomWidget.customTextField(
                              // controller:
                              //     controller.emailController,
                              inputBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3,
                                    color: Colors.greenAccent), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              hintText: "",
                              bgColor: Warna.grey),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: Get.width / 1.2,
                        child: CustomText().titleTextWithoutBold(
                            "2. Apakah korban Jhon Doe memiliki nomor KTP yang sesuai ?",
                            textColor: Warna.softBlack,
                            textAlign: TextAlign.left),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      ListTile(
                        title: Text("Ya,7123123234234234234"),
                        contentPadding: EdgeInsets.all(0),
                        leading: Radio(
                          value: 1,
                          groupValue: controller.value2,
                          onChanged: (i) {
                            print(i);
                            controller.setValue(1, 2);
                          },
                        ),
                      ),
                      ListTile(
                        title: Text("Tidak"),
                        contentPadding: EdgeInsets.all(0),
                        leading: Radio(
                          value: 2,
                          groupValue: controller.value2,
                          onChanged: (i) {
                            print(i);
                            controller.setValue(2, 2);
                            // controller.setValue(value.)
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Container(
                          width: 150,
                          height: 60,
                          child: CustomWidget.customTextField(
                              // controller:
                              //     controller.emailController,
                              inputBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 3,
                                    color: Colors.greenAccent), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              hintText: "",
                              bgColor: Warna.grey),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: Get.width / 1.2,
                        child: CustomText().titleTextWithoutBold(
                            "3. Pilih level tingkat kecelakaan  ?",
                            textColor: Warna.softBlack,
                            textAlign: TextAlign.left),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      ListTile(
                        title: Text("Sangat Parah"),
                        contentPadding: EdgeInsets.all(0),
                        leading: Radio(
                          value: 1,
                          groupValue: controller.value3,
                          onChanged: (i) {
                            print(i);
                            controller.setValue(1, 3);
                          },
                        ),
                      ),
                      ListTile(
                        title: Text("Cukup Parah"),
                        contentPadding: EdgeInsets.all(0),
                        leading: Radio(
                          value: 2,
                          groupValue: controller.value3,
                          onChanged: (i) {
                            print(i);
                            controller.setValue(2, 3);
                            // controller.setValue(value.)
                          },
                        ),
                      ),
                      ListTile(
                        title: Text("Tidak Parah"),
                        contentPadding: EdgeInsets.all(0),
                        leading: Radio(
                          value: 3,
                          groupValue: controller.value3,
                          onChanged: (i) {
                            print(i);
                            controller.setValue(3, 3);
                            // controller.setValue(value.)
                          },
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: Get.width / 1.2,
                        child: CustomText().titleTextWithoutBold(
                            "4. Lampirkan Bukti Pendukung  ?",
                            textColor: Warna.softBlack,
                            textAlign: TextAlign.left),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText().titleText(
                              "WhatsApp Image 2022-09-23 at 22.54.53.jpeg"),
                        ),
                      ),
                      Container(
                        width: Get.width,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Warna.abuMuda,
                              side: BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            onPressed: () {},
                            child: CustomText()
                                .titleText("SUBMIT", textColor: Warna.white)),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
