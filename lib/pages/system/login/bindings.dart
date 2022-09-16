import 'package:get/get.dart';

import 'controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    //懒加载的方式 一开始加载一个符号 等真用时实例化
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
