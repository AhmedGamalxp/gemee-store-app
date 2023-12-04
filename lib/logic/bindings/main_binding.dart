import 'package:gemee_shop_app/logic/controllers/cart_controller.dart';
import 'package:gemee_shop_app/logic/controllers/product_controller.dart';
import 'package:get/instance_manager.dart';
import 'package:gemee_shop_app/logic/controllers/main_controller.dart';
import 'package:gemee_shop_app/logic/controllers/settings_controller.dart';
import 'package:gemee_shop_app/logic/controllers/payment_controller.dart';

import '../controllers/category_controller.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.put(CartController());
    Get.put(CategoryController());

    Get.put(MainController());
    Get.put(SettingController());
    Get.put(PayMentController(), permanent: true);
  }
}
