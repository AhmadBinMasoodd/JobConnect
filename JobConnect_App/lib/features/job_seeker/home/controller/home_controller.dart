import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  RxBool isAvailable = false.obs;
  RxString pickedFileName = ''.obs;
  RxString pickedProjectName = ''.obs;

  Future<void> pickResume() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null) {
      pickedFileName.value = result.files.single.name;
    }
  }

  Future<void> pickProject() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null) {
      pickedProjectName.value = result.files.single.name;
    }
  }
}
