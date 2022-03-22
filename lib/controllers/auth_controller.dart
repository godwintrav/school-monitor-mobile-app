import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:skool_trust/models/auth_data.dart';
import 'package:skool_trust/models/student.dart';
import 'package:skool_trust/services/remote_services.dart';

class AuthController extends GetxController {
  final authData = AuthData().obs;
  final studentData = Student().obs;
  var isLoading = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<bool> loginUser() async {
    try {
      isLoading(true);
      var data = await RemoteServices.loginUser(
          emailController.text.trim(), passwordController.text.trim());
      if (data != null) {
        authData.value = data;
        studentData.value = await RemoteServices.fetchStudent(
            authData.value.student, authData.value.token);
        return true;
      }
    } finally {
      isLoading(false);
    }
    return false;
  }
}
