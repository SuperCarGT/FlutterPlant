import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_body.dart';




class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // 状态栏颜色
        brightness: Brightness.light,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
      ),
      body: HomeBody(),
    );
  }
}
