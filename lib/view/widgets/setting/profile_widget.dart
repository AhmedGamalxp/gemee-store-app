import 'package:flutter/material.dart';
import 'package:gemee_shop_app/utils/theme.dart';
import 'package:get/get.dart';
import 'package:gemee_shop_app/logic/controllers/auth_controller.dart';
import 'package:gemee_shop_app/logic/controllers/settings_controller.dart';
import 'package:gemee_shop_app/view/widgets/text_utils.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({Key? key}) : super(key: key);

  final controller = Get.find<SettingController>();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                  size: 80,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtils(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    text: controller
                        .capitalize(authController.displayUserName.value),
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    underLine: TextDecoration.none,
                  ),
                  TextUtils(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    text: authController.displayUserEmail.value,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    underLine: TextDecoration.none,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
