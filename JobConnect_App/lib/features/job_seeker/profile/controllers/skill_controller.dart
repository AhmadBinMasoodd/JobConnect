

import 'package:get/get.dart';

 class SkillController extends GetxController{
    static SkillController get instance => Get.find();

    RxList<String> skills = <String>[].obs;

    void addSkill(String skill) {
      if (skill
          .trim()
          .isNotEmpty && !skills.contains(skill.trim())) {
        skills.add(skill.trim());
      }
    }

    void removeSkill(String skill) {
      skills.remove(skill);

    }

}
