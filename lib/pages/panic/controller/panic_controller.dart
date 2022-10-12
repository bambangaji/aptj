import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/component/customText.dart';
import 'package:satgas/component/customWidget.dart';
import 'package:satgas/pages/panic/view/form.dart';

class PanicController extends GetxController {
  var isOTS = false;
  var jumlahKendaraan = 1.obs;
  addKendaraan() {
    jumlahKendaraan.value += 1;
    update();
    print(jumlahKendaraan);
  }

  removeKendaraan() {
    if (jumlahKendaraan != 0) {
      jumlahKendaraan.value -= 1;
    }
    update();
  }

  setValue(int i, int index) {
    if (index == 1) {
      value = i;
    } else if (index == 2) {
      value2 = i;
    } else {
      value3 = i;
    }
    update();
  }

  int value = 1;

  int value2 = 1;
  int value3 = 1;
  List<String> JawabanA = ["Ya, B 1234 CDF", "Tidak"];
  String JawabanBenarA = "Ya, B 1234 CDF";
  sudahDiTempat() {
    Get.defaultDialog(
        title: "total kendaraan accident".toUpperCase(),
        titleStyle: TextStyle(fontSize: 15),
        // textConfirm: "Submit",
        content: Column(
          children: [
            // CustomText().titleText(
            //   "total kendaraan accident".toUpperCase(),
            // ),
            Container(
              width: 250,
              child: CustomText().titleTextWithoutBold(
                  textAlign: TextAlign.center,
                  "Masukkan total kendaraan yang ada di lapangan"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 150,
              height: 44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Warna.softBlack)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        removeKendaraan();
                      },
                      child: Icon(
                        Icons.remove,
                      ),
                    ),
                    Obx(
                      () => CustomText().titleText(
                          jumlahKendaraan.value.toString(),
                          fontSize: 18),
                    ),
                    GestureDetector(
                      onTap: () {
                        addKendaraan();
                      },
                      child: Icon(
                        Icons.add,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        actions: [],
        cancel: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Warna.white,
              side: BorderSide(color: Warna.biru, width: 1.0),
            ),
            onPressed: () {
              Get.back();
            },
            child: CustomText().titleText("CANCEL", textColor: Warna.biru)),
        confirm: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Warna.biru,
              side: BorderSide(color: Colors.transparent, width: 1.0),
            ),
            onPressed: () {
              Get.to(FormBantuanPage());
            },
            child: CustomText().titleText("SUBMIT", textColor: Warna.white)));
  }
}
