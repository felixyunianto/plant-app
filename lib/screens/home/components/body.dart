import 'package:flutter/widgets.dart';
import 'package:planet_app/constants.dart';
import 'package:planet_app/screens/home/components/featured_plant.dart';
import 'package:planet_app/screens/home/components/header_with_searchbox.dart';
import 'package:planet_app/screens/home/components/recomend_plants.dart';
import 'package:planet_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget{
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size : size),
          TitleWithMoreBtn(title : "Recomended", press : () {}),
          const RecomendsPlants(),
          TitleWithMoreBtn(title : "Features Plant", press : () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding)
        ],
      )
    );
  }
}