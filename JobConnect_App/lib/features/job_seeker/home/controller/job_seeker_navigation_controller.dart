import 'package:get/get.dart';

class JobSeekerNavigationController extends GetxController {
  static JobSeekerNavigationController get instance => Get.find();

  final RxInt currentIndex = 0.obs;

  void changeTab(int index) {
    currentIndex.value = index;
  }
}
