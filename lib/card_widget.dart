import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LayoutCard extends StatelessWidget {
  LayoutCard(
      {required this.gcolor1,
      required this.gcolor2,
      required this.headerText,
      required this.subText,
      required this.onPress});

  final Color gcolor1;
  final Color gcolor2;
  final String headerText;
  final String subText;
  final Function() onPress;

  Widget _bigDisplay(){
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 180.0,
        width: 600.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    headerText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Icon(FontAwesomeIcons.amazonPay),
            SizedBox(
              width: 50.0,
            ),
          ],
        ),
        margin: EdgeInsets.all(35.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(offset: Offset.fromDirection(2,1),
                color: Colors.red,
                blurRadius: 7.0,
                spreadRadius: 0.0)
          ],
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: const [0.2, 0.7],
            colors: [
              gcolor1,
              gcolor2,
            ],
          ),
        ),
      ),
    );
  }

  Widget _smallDisplay(){
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 80.0,
        width: 300.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    headerText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Icon(FontAwesomeIcons.amazonPay),
            SizedBox(
              width: 30.0,
            ),
          ],
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(offset: Offset.fromDirection(2,1),
                color: Colors.red,
                blurRadius: 7.0,
                spreadRadius: 0.0)
          ],
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: const [0.2, 0.7],
            colors: [
              gcolor1,
              gcolor2,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      if(constraints.maxWidth>500){
        return _bigDisplay();
      }
      else {
        return _smallDisplay();
      }
    },
    );
  }
}
