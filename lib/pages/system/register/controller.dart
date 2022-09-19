import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/index.dart';

class RegisterController extends GetxController {
  RegisterController();
  GlobalKey formKey = GlobalKey<FormState>();
  _initData() {
    update(["register"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }
// 用户名
  TextEditingController userNameController =
  TextEditingController(text: "ducafecat5");
  // 邮件
  TextEditingController emailController =
  TextEditingController(text: "ducafecat5@gmail.com");
  // 姓
  TextEditingController firstNameController =
  TextEditingController(text: "ducafe");
  // 名
  TextEditingController lastNameController = TextEditingController(text: "cat");
  // 密码
  TextEditingController passwordController =
  TextEditingController(text: "12345678");
  @override
  void onReady() {
    super.onReady();
    _initData();
  }
  // 注册
  void onSignUp() {
    if ((formKey.currentState as FormState).validate()) {
      // aes 加密密码
       var password = EncryptUtil().aesEncode(passwordController.text);
      //var password = passwordController.text;

      //验证通过
      Get.offNamed(
        RouteNames.systemRegisterPin,
        arguments: RegisterReq(
          username: userNameController.text,
          email: emailController.text,
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          password: password,
        ),
      );
    }
  }

  // 登录
  void onSignIn() {
    Get.offNamed(RouteNames.systemLogin);
  }
  // 释放
  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    passwordController.dispose();
  }
}
