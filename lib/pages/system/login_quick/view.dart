import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzcc/common/index.dart';

import 'index.dart';

class LoginQuickPage extends GetView<LoginQuickController> {
  const LoginQuickPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
  
    return <Widget>[
      //logo
      ImageWidget.asset(
        AssetsImages.logoPng,
        width: 60,
        height: 57,
      ),
      //标题1
      TextWidget.title2("Let' s Sign You In",color: AppColors.onPrimary,),
      // 标题2
      TextWidget.body2(
        "Welcome back, you’ve",
        color: AppColors.onPrimary,
      ).paddingBottom(55),
      //表单
      <Widget>[
        //username
        TextWidget.body1('Username or E-Mail',color: Color(0xff838383),),
        //username input
        InputWidget.iconTextFilled(IconWidget.icon(Icons.person))
            .paddingBottom(AppSpace.listRow * 2),
        //password
        const TextWidget.body1(
          "Password",
          color: Color(0xff838383),
        ).paddingBottom(AppSpace.listRow),
        //password input
        InputWidget.iconTextFilled(IconWidget.icon(Icons.lock_outline))
            .paddingBottom(29),
        //登录按钮
        const ButtonWidget.primary(
          "Sıgn In",
          backgroundColor: Color(0xffFD8700),
          borderRadius: 18,
        ).tight(width: double.infinity, height: 57),
        //注册
        <Widget>[
          // 文字
          const TextWidget.body1(
            "Don’t have an accoun?",
            color: Color(0xff838383),
          ).paddingRight(AppSpace.listItem),

          // 注册按钮
          ButtonWidget.text(
            "Sign Up",
            textColor: const Color(0xff0274BC),
            textWeight: FontWeight.bold,
          ),
        ].toRow( mainAxisAlignment: MainAxisAlignment.center,),
      ].toColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
      ).paddingAll(20).card(
        color: Colors.white,
        radius: 35,
      ),
    ].toColumn(
      //主轴范围 居中
      mainAxisAlignment: MainAxisAlignment.center,
    ).paddingHorizontal(15);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginQuickController>(
      init: LoginQuickController(),
      id: "login_quick",
      builder: (_) {
        return Scaffold(
      backgroundColor: const Color(0xff0274BC),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
