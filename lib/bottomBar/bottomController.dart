import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BottomController extends GetxController {
  Rx<int> index = 0.obs;
  // Rx<int> val = 0.obs;
  void acriveColor(int val) {
    index.value = val;
  }
}
