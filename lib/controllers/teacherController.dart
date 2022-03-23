import 'package:get/state_manager.dart';
import 'package:skool_trust/controllers/auth_controller.dart';
import 'package:skool_trust/models/teacher.dart';
import 'package:skool_trust/services/remote_services.dart';
import 'package:get/get.dart';

class TeacherController extends GetxController {
  String token = Get.find<AuthController>().authData.value.token;
  var teacherList = <Teacher>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    print("Fetching teachers");
    fetchTeachers();
    super.onInit();
  }

  void fetchTeachers() async {
    print("Fetching teachers");
    try {
      isLoading(true);
      var teachers = await RemoteServices.fetchTeacher(token);
      if (teachers != null) {
        teacherList.assignAll(teachers);
      }
    } finally {
      isLoading(false);
    }
  }
}
