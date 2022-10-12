import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:satgas/component/color.dart';
import 'package:satgas/pages/panic/view/map.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  bool _isLoading = false;
  bool isValid = true;
  bool isSuccess = true;
  String _otp = "";
  String request_id = "";
  String kodeOTP = "111111";
  bool _keyboard = false;
  var _otpSymbols = ["", "", "", ""];
  int _heightKeyboard = 3;
  final interval = const Duration(seconds: 1);
  String register_id = "";
  int timerMaxSeconds = 120;
  double fontSize = 40;
  int currentSeconds = 0;
  bool stopTimer = false;
  bool isApplyOtpSent = true;
  int currentTime = 0;
  bool isFailOTP = false;
  bool isTimeOut = false;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  void _handleKeypadClick(String val) {
    setState(() {
      if (_otp.length < 4) {
        _otp = _otp + val;
        for (int i = 0; i < _otp.length; i++) _otpSymbols[i] = _otp[i];
      }
    });
  }

  void _handleKeypadDel() {
    setState(() {
      if (_otp.length > 0) {
        _otp = _otp.substring(0, _otp.length - 1);
        for (int i = _otp.length; i < 4; i++) _otpSymbols[i] = "";
      }
    });
  }

  TextStyle textStyleCustom({Color color = Colors.black}) {
    // print("tinggi" + MediaQuery.of(context).size.height.toString());
    // print("tinggi" + size.height.toString());
    return TextStyle(
        fontSize: MediaQuery.of(context).size.width / 10,
        color: color,
        fontWeight: FontWeight.w400);
  }

  void _handleSubmit() {
    // if (widget.isDummy) {
    //   // Get.offNamedUntil('/Dashboard', (route) => false);
    //   Get.until((route) => Get.currentRoute == '/Dashboard');
    // }
    Get.to(MapPage());
    // if (_otp.length == 6)
    //   SnackBar(
    //     content: Text('Entered OTP is $_otp'),
    //   );
    // else
    //   SnackBar(
    //     content: Text('OTP has to be of 4 digits'),
    //     backgroundColor: Colors.red,
    //   );
  }

  void _showKeyboad() {
    setState(() {
      !_keyboard ? _heightKeyboard = 5 : _heightKeyboard = 3;
      _keyboard = !_keyboard;
    });
  }

  verifyLogin() async {
    // print("verify login");
    // SecureStorage().writeSecureData('login', "true");
    // var cert = await CekCertificate();
    // cert.data.cert_error_code == 0
    //     ? SecureStorage().writeSecureData('cert', "true")
    //     : SecureStorage().writeSecureData('cert', "false");
    // // Get.until((route) => Get.currentRoute == '/Dashboard');
    // DashboardController dashboardController = Get.find<DashboardController>();
    // Get.lazyPut(() => ProfileController());
    // ProfileController profileController = Get.find<ProfileController>();
    // await profileController.GetDataProfile();
    // await dashboardController.viewPage(0);
    // stopLoading();
    // // dashboardController.rkgBnvState.currentState!.currentIndex = 0;
    // Get.offNamed('/Dashboard');
  }

  @override
  void initState() {
    super.initState();
    // if (widget.isEmail) {
    //   setState(() {
    //     timerMaxSeconds = 120;
    //   });
    // }
    // widget.isDummy ? null : startTimeout();
    // register_id = widget.register_id!;
    setState(() {
      !_keyboard ? _heightKeyboard = 5 : _heightKeyboard = 3;
      _keyboard = !_keyboard;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double widthkotak = width / 7;
    double heightkotak = height / 11;

    // print(width.toString() + height.toString());
    return LoadingOverlay(
        progressIndicator: CircularProgressIndicator(),
        color: Warna.biruToscaMuda,
        opacity: 0.2,
        isLoading: _isLoading,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          // appBar: PreferredSize(
          //     preferredSize: const Size.fromHeight(50),
          //     child: new HeaderAppBar()),
          body: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.va,
                  children: [
                    Container(
                      height: Get.height * 0.14,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.highlight_remove_sharp,
                              color: Warna.orange,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: Get.height * 0.72,
                      width: width,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            width: width - 40,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Warna.softSilver2,
                                  borderRadius: BorderRadius.circular(12)),
                              height: height * 0.65,
                              child: SingleChildScrollView(
                                child: Container(
                                  height: height * 0.65,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30.0, bottom: 10),
                                        child: Text(
                                          "Masukan PIN , Jhon Doe",
                                          style:
                                              TextStyle(color: Warna.biruTua),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // _showKeyboad();
                                        },
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                for (var j = 0;
                                                    j < _otpSymbols.length;
                                                    j++)
                                                  Container(
                                                    height: heightkotak,
                                                    width: widthkotak,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Warna
                                                                .softSilver),
                                                        color: Warna.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Center(
                                                      child: Text(
                                                        _otpSymbols[j],
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: fontSize,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // color: Colors.amber,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(children: <Widget>[
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Warna.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        _handleKeypadClick('1');
                                                      },
                                                      child: Text('1',
                                                          style:
                                                              textStyleCustom()),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Warna.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        _handleKeypadClick('2');
                                                      },
                                                      child: Text('2',
                                                          style: TextStyle(
                                                              fontSize:
                                                                  fontSize,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Warna.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        _handleKeypadClick('3');
                                                      },
                                                      child: Text('3',
                                                          style: TextStyle(
                                                              fontSize:
                                                                  fontSize,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                    ),
                                                  )
                                                ]),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Warna.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        _handleKeypadClick('4');
                                                      },
                                                      child: Text('4',
                                                          style:
                                                              textStyleCustom()),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Warna.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        _handleKeypadClick('5');
                                                      },
                                                      child: Text('5',
                                                          style:
                                                              textStyleCustom()),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Warna.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        _handleKeypadClick('6');
                                                      },
                                                      child: Text('6',
                                                          style:
                                                              textStyleCustom()),
                                                    ),
                                                  )
                                                ]),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Warna.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        _handleKeypadClick('7');
                                                      },
                                                      child: Text('7',
                                                          style: TextStyle(
                                                              fontSize:
                                                                  fontSize,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Warna.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        _handleKeypadClick('8');
                                                      },
                                                      child: Text('8',
                                                          style:
                                                              textStyleCustom()),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Warna.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100)),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        _handleKeypadClick('9');
                                                      },
                                                      child: Text('9',
                                                          style:
                                                              textStyleCustom()),
                                                    ),
                                                  )
                                                ]),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 10.0),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: <Widget>[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Warna.softSilver,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          _handleKeypadDel();
                                                        },
                                                        child: Text('\u{232b}',
                                                            style:
                                                                textStyleCustom(
                                                                    color: Colors
                                                                        .white)),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: Warna.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          _handleKeypadClick(
                                                              '0');
                                                        },
                                                        child: Text('0',
                                                            style:
                                                                textStyleCustom()),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: Warna.biru,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          _handleSubmit();
                                                        },
                                                        child: Icon(
                                                          Icons
                                                              .arrow_forward_sharp,
                                                          size: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              9,
                                                          color: Warna.white,
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                          ]),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              child: Container(
                                width: width - 40,
                                height: 80,
                                // decoration: BoxDecoration(
                                //   border: Border.all()
                                // ),
                                child: Center(
                                    child: Image.asset("lib/assets/jhon.png")),
                              ))
                        ],
                      ),
                    ),
                  ])),
        ));
  }
}
