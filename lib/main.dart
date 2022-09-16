import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/index.dart';
import 'common/routers/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // 路由
      // initialRoute: "/",
      // getPages: RoutePages.list,
      // 路由
      initialRoute: RouteNames.systemSplash,
      getPages: RoutePages.list,
      navigatorObservers: [RoutePages.observer],
      //home: Container(child: Text('123'),color: Colors.red,),
    );
  }
}

