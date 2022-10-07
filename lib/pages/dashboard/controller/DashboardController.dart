import 'package:get/get.dart';

import 'package:satgas/component/MotionTabBar/MotionTabController.dart';
import 'package:satgas/main_controller.dart';
import 'package:satgas/pages/dashboard/view/notification.dart';
import 'package:satgas/pages/panic/view/panicPage.dart';

class DashboardController extends GetxController
    with GetTickerProviderStateMixin {
  var isLoading = false.obs;

  MotionTabController? tabController;

  MainController getMainController() {
    return Get.find<MainController>();
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  changeIndexTab(int value) {
    tabController!.index = value;
    update();
  }

  onBuildPage() async {
    tabController =
        MotionTabController(initialIndex: 1, vsync: this, length: 3);
    update();
  }

  goToPanic() async {
    Get.to(PanicPage());
  }
  goToNotification(){
    Get.to(()=> NotificationPage());
  }
}
