import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:skool_trust/models/auth_data.dart';
import 'package:skool_trust/models/student.dart';
import 'package:skool_trust/services/remote_services.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final authData = AuthData().obs;
  final studentData = Student().obs;
  var isLoading = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

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
      passwordController.text = '';
    }
    return false;
  }

  Future<bool> changeUserPassword() async {
    try {
      isLoading(true);
      if (newpasswordController.text
              .trim()
              .compareTo(confirmpasswordController.text.trim()) !=
          0) {
        Get.snackbar(
          "Error",
          "Passwords do not match",
          icon: Icon(Icons.person, color: Colors.white),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          borderRadius: 20,
          margin: EdgeInsets.all(15),
          colorText: Colors.white,
          duration: Duration(seconds: 4),
          isDismissible: true,
          dismissDirection: SnackDismissDirection.HORIZONTAL,
          forwardAnimationCurve: Curves.easeOutBack,
        );
        return false;
      }
      var data = await RemoteServices.changeUserPassword(
          passwordController.text.trim(),
          confirmpasswordController.text.trim(),
          authData.value.student,
          authData.value.token);
      if (data == 200) {
        Get.snackbar(
          "Success",
          "Password Changed Successfully",
          icon: Icon(Icons.person, color: Colors.white),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          borderRadius: 20,
          margin: EdgeInsets.all(15),
          colorText: Colors.white,
          duration: Duration(seconds: 4),
          isDismissible: true,
          dismissDirection: SnackDismissDirection.HORIZONTAL,
          forwardAnimationCurve: Curves.easeOutBack,
        );
        return true;
      } else if (data == 401) {
        Get.snackbar(
          "Error",
          "Incorrect Password",
          icon: Icon(Icons.person, color: Colors.white),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          borderRadius: 20,
          margin: EdgeInsets.all(15),
          colorText: Colors.white,
          duration: Duration(seconds: 4),
          isDismissible: true,
          dismissDirection: SnackDismissDirection.HORIZONTAL,
          forwardAnimationCurve: Curves.easeOutBack,
        );
      } else {
        Get.snackbar(
          "Server Error",
          "Please try again",
          icon: Icon(Icons.person, color: Colors.white),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          borderRadius: 20,
          margin: EdgeInsets.all(15),
          colorText: Colors.white,
          duration: Duration(seconds: 4),
          isDismissible: true,
          dismissDirection: SnackDismissDirection.HORIZONTAL,
          forwardAnimationCurve: Curves.easeOutBack,
        );
      }
    } finally {
      isLoading(false);
    }
    return false;
  }
}
