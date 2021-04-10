import 'package:flutter/material.dart';
import 'package:flutter_plant_app/Page/Screen_Page/detail/plant_detail_left_button_widget.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PlantDetailBodyWidget extends StatefulWidget {
  PlantDetailBodyWidget({Key key}) : super(key: key);

  @override
  _PlantDetailBodyWidgetState createState() => _PlantDetailBodyWidgetState();
}

class _PlantDetailBodyWidgetState extends State<PlantDetailBodyWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 84,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: size.height * 0.8,
                        child: Padding(
                          padding: EdgeInsets.only(top: kDefaultPadding * 3),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: IconButton(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: kDefaultPadding),
                                  icon: SvgPicture.asset(
                                      "assets/icons/back_arrow.svg"),
                                  onPressed: () {
                                    Get.back();
                                  },
                                ),
                              ),
                              Spacer(),
                              PlantDetailLeftButtonWidget(
                                  imageName: "assets/icons/sun.svg"),
                              PlantDetailLeftButtonWidget(
                                  imageName: "assets/icons/icon_3.svg"),
                              PlantDetailLeftButtonWidget(
                                  imageName: "assets/icons/icon_4.svg"),
                              PlantDetailLeftButtonWidget(
                                  imageName: "assets/icons/icon_2.svg"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.8,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(63),
                          bottomLeft: Radius.circular(63),
                        ),
                        image: DecorationImage(
                          alignment: Alignment.centerLeft,
                          image: AssetImage("assets/images/img.png"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.3),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: kDefaultPadding * 2,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Angelica\n",
                            style:
                                Theme.of(context).textTheme.headline4.copyWith(
                                      color: kTextColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          TextSpan(
                            text: "Russia",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ]),
                      ),
                      Spacer(),
                      Text(
                        "\$440",
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: 84,
          child: Row(
            children: [
              Container(
                child: FlatButton(
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    "Buy now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                width: size.width / 2,
                height: 84,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.only(topRight: Radius.circular(20),),
                //   color: kPrimaryColor,
                //
                // ),
              ),
              Expanded(child: Container(
                child: FlatButton(
                  color: kBackgroundColor,
                  onPressed: (){},
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                width: size.width / 2,
                height: 84,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.only(topRight: Radius.circular(20),),
                //   color: kPrimaryColor,
                //
                // ),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
