import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturePlantWidget extends StatelessWidget {
  const FeaturePlantWidget({
    Key key,
    this.image
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2,
      ),
      width: size.width*0.8,
      height: 185,
      decoration: BoxDecoration(
        // color: Colors.redAccent,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            // fit: BoxFit.fill,
            fit: BoxFit.cover,
            image: AssetImage(image,),
          )
      ),
    );
  }
}
