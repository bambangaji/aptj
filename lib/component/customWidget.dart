import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'card.dart';
import 'color.dart';
import 'customText.dart';

class CustomWidget {
  static Widget customTextField(
      {String hintText = "",
      InputBorder inputBorder = InputBorder.none,
      Color bgColor = Warna.softWhite,
      bool obsecureText = false,
      bool readOnly = false,
      Function()? callback,
      bool isNumber = false,
      EdgeInsets padding = const EdgeInsets.only(left: 15),
      Widget? prefixIcon,
      TextEditingController? controller}) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: bgColor),
        child: Padding(
          padding: padding,
          child: TextFormField(
            onTap: callback,
            readOnly: readOnly,
            controller: controller,
            keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
            obscureText: obsecureText,
            decoration: InputDecoration(
              prefixIcon: prefixIcon != null ? prefixIcon : null,
              label: Text(hintText),
              border: inputBorder,
              hintText: hintText,
            ),
          ),
        ));
  }

  static Widget IconMenu(IconData icon, String content,
      {required void Function() callBack,
      Color IconColor = Warna.softBlueCyan,
      String text2nd = ""}) {
    return GestureDetector(
      onTap: callBack,
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Warna.abuMudaBG,
                  borderRadius: BorderRadius.circular(100)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon, size: Get.height / 22, color: IconColor),
              )),
          Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Column(
              children: [
                CustomText().titleTextWithoutBold(content,
                    textColor: Warna.softBlack, fontSize: 12),
                text2nd == ""
                    ? Container()
                    : CustomText().titleTextWithoutBold(text2nd,
                        fontSize: 12, textColor: Warna.softBlack),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // static Widget TicketCard(TicketModel data) {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Container(
  //           // width: Get.width / 2.5,
  //           decoration: BoxDecoration(
  //               border: Border.all(
  //                   color: data.tiketFee > 100000 ? Colors.red : Colors.green),
  //               borderRadius: BorderRadius.circular(10),
  //               color: data.tiketFee > 100000
  //                   ? Warna.pink
  //                   : Warna.softIjoMuda),
  //           child: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Row(
  //               children: [
  //                 CustomText().titleTextWithIcon(
  //                     NumberFormat.currency(locale: "id")
  //                         .format(data.tiketFee)
  //                         .replaceAll("IDR", "IDR ")
  //                         .toString(),
  //                     Icons.receipt,
  //                     isBack: true,
  //                     fontSize: 13,
  //                     textColor: Warna.softWhite)
  //               ],
  //             ),
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.only(top: 4.0),
  //           child: CustomText().titleTextWithoutBold(data.name_ticket),
  //         )
  //       ],
  //     ),
  //   );
  // }

  // static Widget ListTileTopUp(CharacterModel characterModel,
  //     {required String leadIconLocation,
  //     required String title,
  //     required void Function() callBack,
  //     double imageWidth = 10}) {
  //   return GestureDetector(
  //     onTap: callBack,
  //     child: characterModel.gender == "M"
  //         ? customCard().cardBlueWidget(
  //             ListTile(
  //               trailing: characterModel.isExpand
  //                   ? Icon(
  //                       Icons.keyboard_arrow_down,
  //                       color: Warna.softWhite,
  //                       size: Get.width / 15,
  //                     )
  //                   : Icon(
  //                       Icons.keyboard_arrow_right_outlined,
  //                       color: Warna.softWhite,
  //                       size: Get.width / 15,
  //                     ),
  //               leading: Container(
  //                 height: 60,
  //                 width: 60,
  //                 decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(10),
  //                     image: DecorationImage(
  //                         fit: BoxFit.cover,
  //                         image: AssetImage(leadIconLocation))),
  //               ),
  //               shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(10)),
  //               title: Text(
  //                 title,
  //                 style: TextStyle(
  //                     color: Warna.softWhite, fontWeight: FontWeight.bold),
  //               ),
  //               tileColor: Colors.white,
  //             ),
  //           )
  //         : customCard().cardPinkWidget(
  //             ListTile(
  //               trailing: characterModel.isExpand
  //                   ? Icon(
  //                       Icons.keyboard_arrow_down,
  //                       color: Warna.softWhite,
  //                       size: Get.width / 15,
  //                     )
  //                   : Icon(
  //                       Icons.keyboard_arrow_right_outlined,
  //                       color: Warna.softWhite,
  //                       size: Get.width / 15,
  //                     ),
  //               leading: Container(
  //                 height: 60,
  //                 width: 60,
  //                 decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(10),
  //                     image: DecorationImage(
  //                         fit: BoxFit.cover,
  //                         image: AssetImage(leadIconLocation))),
  //               ),
  //               shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(10)),
  //               title: Text(
  //                 title,
  //                 style: TextStyle(
  //                     color: Warna.softWhite, fontWeight: FontWeight.bold),
  //               ),
  //               tileColor: Colors.white,
  //             ),
  //           ),
  //   );
  // }

  static Widget ListTileTopUp(
      {String leadIconLocation = "",
      required String title,
      String message = "",
      required void Function() callBack,
      double imageWidth = 10,
      Widget? leadIconFromWidget,
      Color bgColor = Warna.white,
      Color iconColor = Warna.softBlack,
      Color textColor = Warna.softBlack,
      EdgeInsetsGeometry? padding}) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: GestureDetector(
        onTap: callBack,
        child: ListTile(
          // iconColor: Warna.red,
          contentPadding: padding != null
              ? padding
              : EdgeInsets.symmetric(horizontal: 16, vertical: 2),
          trailing: Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Warna.orange,
            size: Get.width / 15,
          ),
          leading: leadIconFromWidget != null
              ? leadIconFromWidget
              : leadIconLocation != ""
                  ? Image.asset(
                      leadIconLocation,
                      width: imageWidth == 10 ? Get.width / 13 : imageWidth,
                    )
                  : null,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Warna.silver,
              ),
              borderRadius: BorderRadius.circular(10)),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              message != ""
                  ? Text(
                      message,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 14),
                    )
                  : Container()
            ],
          ),
          tileColor: bgColor,
          textColor: textColor,
        ),
      ),
    );
  }

  var isOpen = false;
  Future<bool> closeOverlay() async {
    return isOpen;
  }

  customAlert(String content, IconData icon, Color colorBg) {
    Get.snackbar(
      "",
      "",
      barBlur: 0,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(0),
      titleText: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CustomText()
                .titleText(content, textColor: Colors.white, fontSize: 16),
          ),
        ),
      ),
      backgroundColor: colorBg,
      icon: Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                icon,
                color: colorBg,
                size: 26,
              ),
            )),
      ),
    );
    Get.showOverlay(
        asyncFunction: () => closeOverlay(),
        loadingWidget: GestureDetector(
          onTap: (() {
            Get.back();
          }),
          child: Container(
            height: Get.height,
            width: Get.width,
            child: Positioned(
                top: 0,
                child: Center(
                  child: Container(
                      width: Get.width - 20,
                      height: 80,
                      decoration: BoxDecoration(
                        color: colorBg,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Icon(
                                      icon,
                                      color: colorBg,
                                      size: 27,
                                    ),
                                  )),
                              Container(
                                child: CustomText().titleText(content,
                                    textColor: Colors.white),
                              ),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.transparent),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Icon(
                                      Icons.close,
                                      color: Warna.softSilver,
                                      size: 27,
                                    ),
                                  )),
                            ]),
                      )),
                )),
          ),
        ));
  }
}
