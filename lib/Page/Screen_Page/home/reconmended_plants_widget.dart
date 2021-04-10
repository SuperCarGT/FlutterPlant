import 'package:flutter/material.dart';
import 'package:flutter_plant_app/Page/Screen_Page/home/GetX/home_page_controller/logic.dart';
import 'package:flutter_plant_app/Page/Screen_Page/home/recomended_plant_card_widget.dart';
import 'package:get/get.dart';

class ReconmendedPlantsWidget extends StatelessWidget {
  const ReconmendedPlantsWidget({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemExtent: size.width * .5,
        itemBuilder: (_,index){
          index += 1;
          return RecomendedPlantCardWidget(
            ImageName: "assets/images/image_$index.png",
            countryName: "Russia",
            plantName: "Samantha",
            price: "440",
            onPress: () {
              print("点击卡片");
              HomePageControllerLogic logic = Get.find<HomePageControllerLogic>();
              logic.jumpToDetail();
            },
          );
        },
      ),
    );
  }
}
