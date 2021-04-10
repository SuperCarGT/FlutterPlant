import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_plant_app/Page/Screen_Page/home/recomended_plant_card_widget.dart';
import 'package:flutter_plant_app/Page/Screen_Page/home/reconmended_plants_widget.dart';
import 'package:flutter_plant_app/Page/Screen_Page/home/title_more_button_widget.dart';
import 'package:flutter_plant_app/Page/Screen_Page/home/title_underline_widget.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'GetX/home_page_controller/logic.dart';
import 'feature_plant_widget.dart';
import 'header_with_search_box_widget.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  HomePageControllerLogic logic = Get.put(HomePageControllerLogic());
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState

    _controller.addListener(() {
      if (_controller.offset <= 0) {
        double offset = _controller.offset;
        logic.setOffset = offset;
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      controller: _controller,
      slivers: [
        SliverAppBar(
          stretch: true,
          pinned: false,
          floating: false,
          expandedHeight: size.height * 0.2+64,
          snap: false,
          backgroundColor: kPrimaryColor,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: [StretchMode.zoomBackground],
            background: HeaderWithSearchBox(size: size),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            if (index == 0) {
              return TitleMoreButtonWidget(
                text: "Reconmended",
                onPress: () {},
              );
            } else if (index == 1) {
              return ReconmendedPlantsWidget();
            } else if (index == 2) {
              return TitleMoreButtonWidget(
                text: "Featured Plants",
                onPress: () {},
              );
            } else if (index == 3) {
              return Container(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    index += 1;
                    return FeaturePlantWidget(
                      image: "assets/images/bottom_img_$index.png",
                    );
                  },
                ),
              );
            }
            return SizedBox(
              height: kDefaultPadding,
            );
          },childCount: 4),
        ),
      ],
    );

    return Stack(
      children: [
        HeaderWithSearchBox(size: size),
        Positioned(
          child: ListView.builder(
            controller: _controller,
            itemBuilder: (context, index) {
              if (index == 0) {
                return TitleMoreButtonWidget(
                  text: "Reconmended",
                  onPress: () {},
                );
              } else if (index == 1) {
                return ReconmendedPlantsWidget();
              } else if (index == 2) {
                return TitleMoreButtonWidget(
                  text: "Featured Plants",
                  onPress: () {},
                );
              } else if (index == 3) {
                return Container(
                  height: 240,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (_, index) {
                      index += 1;
                      return FeaturePlantWidget(
                        image: "assets/images/bottom_img_$index.png",
                      );
                    },
                  ),
                );
              }
              return SizedBox(
                height: kDefaultPadding,
              );
            },
          ),
        ),
      ],
    );
  }
}
