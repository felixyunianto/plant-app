import 'package:flutter/material.dart';
import 'package:planet_app/constants.dart';
import 'package:planet_app/screens/details/detail_screen.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: <Widget>[
          RecomendsPlantsCard(
              image: "assets/images/image_1.png",
              title: "Samantha",
              country: "Russia",
              price: 440,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              })
        ]));
  }
}

class RecomendsPlantsCard extends StatelessWidget {
  const RecomendsPlantsCard({
    Key? key,
    required this.title,
    required this.image,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String title, image, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            GestureDetector(
              onTap: () => press(),
              child: Container(
                  padding: const EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23),
                        )
                      ]),
                  child: Row(
                    children: <Widget>[
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "$title \n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: "$country \n".toUpperCase(),
                            style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)))
                      ])),
                      const Spacer(),
                      Text("$price",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.copyWith(color: kPrimaryColor))
                    ],
                  )),
            )
          ],
        ));
  }
}
