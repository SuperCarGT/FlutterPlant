import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendedPlantCardWidget extends StatelessWidget {
  const RecomendedPlantCardWidget({
    Key key, this.ImageName, this.plantName, this.countryName, this.onPress, this.price,
  }) : super(key: key);
  final String ImageName;
  final String plantName;
  final String countryName;
  final Function onPress;
  final String price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding ,
        ),
        // width: size.width * 0.4,
        // color: Colors.redAccent,
        child: Column(
          children: [
            Image.asset(ImageName,fit: BoxFit.cover,height: (size.width * 0.5-kDefaultPadding)*190/160,width: size.width * 0.5-kDefaultPadding,),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 30,
                      color: kPrimaryColor.withOpacity(0.3),
                    ),
                  ],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),)
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "$plantName\n",
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: countryName,
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        )
                      ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
