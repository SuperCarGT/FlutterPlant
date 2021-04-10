import 'package:flutter/material.dart';
import 'package:flutter_plant_app/Page/Screen_Page/home/title_underline_widget.dart';

import '../../../constants.dart';

class TitleMoreButtonWidget extends StatelessWidget {
  const TitleMoreButtonWidget({
    Key key, this.text, this.onPress,
  }) : super(key: key);

  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          TitleWithUnderLineWidget(text: text),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            onPressed: onPress,
            child: Text(
              "More",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
