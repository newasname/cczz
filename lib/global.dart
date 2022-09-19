import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import 'common/index.dart';


class Global {
  static Future<void> init() async {
    //启动后清除不用的资源 白屏图片
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {
    });
    // 工具类
    await Storage().init();
    Loading();
    // 初始化服务 dio
    Get.put<WPHttpService>(WPHttpService());
    Get.put<UserService>(UserService());
  }
}