import 'package:flutter_plant_app/route_config.dart';
import 'package:get/get.dart';

class HomePageControllerLogic extends GetxController {

    var offset = 0.0;

    void updateScrollDown() {

    }

    set setOffset(double offset){
        this.offset = offset;
        update();
    }

    void jumpToDetail(){
        Get.toNamed(RouteConfig.detail);
    }
}
