import 'package:flutter/material.dart';
import 'package:planet_app/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({Key? key, this.title, required this.press})
      : super(key: key);

  final String? title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          children: <Widget>[
            TitleWithCustomUnderline(text: title),
            Spacer(),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: kPrimaryColor,
                onPressed: () => press,
                child: Text("More",
                    style: TextStyle(color: Colors.lightBlue.shade100)))
          ],
        ));
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  final String? text;
  const TitleWithCustomUnderline({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                child: Text(text!,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    margin: EdgeInsets.only(right: kDefaultPadding / 4),
                    height: 7,
                    color: kPrimaryColor.withOpacity(0.2)))
          ],
        ));
  }
}
