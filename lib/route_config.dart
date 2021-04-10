import 'package:flutter_plant_app/Page/Screen_Page/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'Page/Screen_Page/detail/plant_detail_page.dart';

class RouteConfig{
  ///主页面
  static final String main = "/";

  ///dialog页面
  static final String dialog = "/dialog";

  ///详情页
  static final String detail = '/plantdetail';


  ///GetX 计数器  跨页面交互
  static final String counterGet = "/counterGet";
  static final String jumpOne = "/jumpOne";
  static final String jumpTwo = "/jumpOne/jumpTwo";

  ///别名映射页面
  static final List<GetPage> getPages = [
    GetPage(name: main, page: () => HomePage()),
    GetPage(name: detail, page: ()=>PlantDetailPage()),
    // GetPage(name: dialog, page: () => Dialog()),
    // GetPage(name: counter, page: () => CounterPage()),
    // GetPage(name: testLayout, page: () => TestLayoutPage()),
    // GetPage(name: smartDialog, page: () => SmartDialogPage()),
    // GetPage(name: spanOne, page: () => SpanOnePage()),
    // GetPage(name: spanTwo, page: () => SpanTwoPage()),
    // GetPage(name: counterGet, page: () => CounterGetPage()),
    // GetPage(name: jumpOne, page: () => JumpOnePage()),
    // GetPage(name: jumpTwo, page: () => JumpTwoPage()),
  ];
}

