import 'package:get/get.dart';

class TeamController extends GetxController {
  final RxString selectedCompanySize = 'Multinational'.obs;
  final RxList<String> selectedDepartments = <String>[].obs;

  final List<String> companySizes = const [
    'Multinational',
    'Startup',
    'Small Business',
    'Enterprise',
    'Agency',
  ];

  final List<String> departments = const [
    'Engineering',
    'Marketing',
    'Finance',
    'HR',
    'Design',
    'Support',
    'Operations',
    'Sales',
  ];

  void selectCompanySize(String value) {
    selectedCompanySize.value = value;
  }

  void toggleDepartment(String value) {
    if (selectedDepartments.contains(value)) {
      selectedDepartments.remove(value);
    } else {
      selectedDepartments.add(value);
    }
  }
}
