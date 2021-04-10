import 'package:flutter/material.dart';
import 'package:flutter_plant_app/Page/Screen_Page/home/GetX/home_page_controller/logic.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'package:get/get.dart';

class HeaderWithSearchBox extends StatefulWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;

  @override
  _HeaderWithSearchBoxState createState() => _HeaderWithSearchBoxState();
}

class _HeaderWithSearchBoxState extends State<HeaderWithSearchBox> {
  HomePageControllerLogic logic = Get.find<HomePageControllerLogic>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageControllerLogic>(
      builder: (_) {
        double totalHeight = widget.size.height * .2 - logic.offset;
        double rate = totalHeight / (widget.size.height * .2);
        double fontsize = 24 * rate;
        if(fontsize > 36) {
          fontsize = 36;
        }
        return Container(
          // margin: EdgeInsets.only(bottom: 50),
          height: totalHeight + 64,
          width: widget.size.width,
          color: kBackgroundColor,
          // color: Colors.redAccent,
          child: Stack(
            // fit: StackFit.expand,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: 36 + kDefaultPadding,
                ),
                height: totalHeight + 14,
                width: widget.size.width,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Hi,Uishopy",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: fontsize,
                          ),
                    ),
                    // Spacer(),
                    Image.asset("assets/images/logo.png"),
                  ],
                ),
              ),
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  // color: Colors.white,
                  height: 54,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 20,
                          color: kPrimaryColor.withOpacity(0.3),
                        ),
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/icons/search.svg"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
