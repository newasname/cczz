import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/index.dart';


class Global {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {
    });
    // 工具类
    await Storage().init();
    // 初始化服务
    Get.put<WPHttpService>(WPHttpService());
  }
}