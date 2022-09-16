import 'package:get/get.dart';

import '../../pages/system/login/index.dart';

// 路由 Pages
class RoutePages {
  // 列表
  static List<GetPage> list = [
    GetPage(
      name: "/",
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}