import 'package:flutter/material.dart';
import 'package:flutter_plant_app/Page/Screen_Page/detail/plant_detail_body_widget.dart';

class PlantDetailPage extends StatefulWidget {
  PlantDetailPage({Key key}) : super(key: key);

  @override
  _PlantDetailPageState createState() => _PlantDetailPageState();
}

class _PlantDetailPageState extends State<PlantDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlantDetailBodyWidget(),
    );
  }
}