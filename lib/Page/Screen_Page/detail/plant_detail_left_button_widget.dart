import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class PlantDetailLeftButtonWidget extends StatelessWidget {
  PlantDetailLeftButtonWidget({Key key,@required this.imageName, this.onPress}) : super(key: key);

  final String imageName;
  final Function onPress;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding*2),
        padding: EdgeInsets.all(kDefaultPadding/2),
        height: 62,
        width: 62,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: kBackgroundColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 20,
                color: kPrimaryColor.withOpacity(0.3),
              ),
              BoxShadow(
                offset: Offset(-15, -15),
                blurRadius: 20,
                color: Colors.white,
              ),
            ]),
        child: SvgPicture.asset(imageName),
      ),
    );
  }
}


