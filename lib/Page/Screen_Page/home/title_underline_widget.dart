import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithUnderLineWidget extends StatelessWidget {
  const TitleWithUnderLineWidget({
    Key key,this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent,
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            // top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.only(right: 5),
              child: Container(
                // padding: EdgeInsets.only(right: 100),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
