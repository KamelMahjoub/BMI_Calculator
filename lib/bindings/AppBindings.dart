import 'package:bmi_project/controllers/BmiController.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
        Get.lazyPut<BmiController>(() => BmiController());

  }

}