import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import '../../../common/index.dart';
import '../login_quick/index.dart';

class SplashController extends GetxController {
  SplashController();

  _initData() {
    update(["splash"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    // 删除设备启动图
    FlutterNativeSplash.remove();
    _initData();

    _jumpToPage(); // 跳转界面
    //Get.toNamed(RouteNames.systemRegister);
    //Get.to(const LoginQuickPage());
  }
  _jumpToPage() {

    Future.delayed(const Duration(seconds: 1)).then((_) {
      if (!ConfigService.to.isFirstOpen) {
        Get.offAllNamed(RouteNames.main);
      } else {
        Get.offAllNamed(RouteNames.systemWelcome);
      }
    });
    // 样式配置
   /* if (ConfigService.to.isFirstOpen == false) {
      Get.offAllNamed(RouteNames.systemWelcome);
    } else {
      Get.offAllNamed(RouteNames.main);
    }*/
    // 欢迎页
   /* Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(RouteNames.systemWelcome);
    });*/
  }
  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
