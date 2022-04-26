import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:skool_trust/controllers/auth_controller.dart';
import 'package:skool_trust/models/attendance.dart';
import 'package:skool_trust/services/remote_services.dart';

class AttendanceController extends GetxController {
  final AuthController authController = Get.find<AuthController>();
  var attendanceData = Attendance().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchAttendance();
    super.onInit();
  }

  void fetchAttendance() async {
    try {
      isLoading(false);
      var attendance = await RemoteServices.fetchAttendance(
          authController.authData.value.token,
          authController.authData.value.student);
      if (attendance != null) {
        attendanceData.value = attendance;
      }
    } finally {
      isLoading(false);
    }
  }
}
