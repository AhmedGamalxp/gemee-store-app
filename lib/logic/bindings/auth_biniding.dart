import 'package:gemee_shop_app/logic/controllers/product_controller.dart';
import 'package:get/instance_manager.dart';
import 'package:gemee_shop_app/logic/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(ProductController());
  }
}
