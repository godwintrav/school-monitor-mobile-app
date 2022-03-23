import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:skool_trust/controllers/auth_controller.dart';
import 'package:skool_trust/models/events.dart';
import 'package:skool_trust/services/remote_services.dart';

class EventsController extends GetxController {
  String token = Get.find<AuthController>().authData.value.token;
  var eventList = <Event>[].obs;
  var isLoading = true.obs;
  var hasError = false.obs;

  @override
  void onInit() {
    fetchEvents();
    super.onInit();
  }

  void fetchEvents() async {
    try {
      isLoading(true);
      hasError(false);
      var assessments = await RemoteServices.fetchEvents(token);
      if (assessments != null) {
        eventList.assignAll(assessments);
      } else {
        hasError(true);
      }
    } finally {
      isLoading(false);
    }
  }
}
