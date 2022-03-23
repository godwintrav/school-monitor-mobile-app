import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:skool_trust/controllers/auth_controller.dart';
import 'package:skool_trust/models/assessment.dart';
import 'package:skool_trust/services/remote_services.dart';

class AssessmentController extends GetxController {
  final AuthController authController = Get.find<AuthController>();
  var assessmentList = <Assessment>[].obs;
  var isLoading = true.obs;
  var hasError = false.obs;

  @override
  void onInit() {
    fetchAssessments();
    super.onInit();
  }

  void fetchAssessments() async {
    try {
      isLoading(true);
      hasError(false);
      var assessments = await RemoteServices.fetchAssessment(
          authController.authData.value.token,
          authController.authData.value.student);
      if (assessments != null) {
        assessmentList.assignAll(assessments);
      } else {
        hasError(true);
      }
    } finally {
      isLoading(false);
    }
  }
}
