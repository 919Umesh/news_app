import 'package:get/get.dart';

import '../../Screens/HomePage/homepage_controller.dart';


class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomepageController>(() => HomepageController(), fenix: true);
  }
}
