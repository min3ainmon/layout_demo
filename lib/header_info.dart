import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({Key? key}) : super(key: key);

  Widget _bigDisplay(){
return Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          "Let\'s Learning",
          style: (TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 60.0,
            color: Colors.indigo,
          )),
        ),
        Text('improve your kids ability',style: TextStyle(
          fontSize: 20.0,
          letterSpacing: 5.0,
        ),
        ),
      ],
    ),
    // Container(child: ,),
    Spacer(),
    SizedBox(
      width: 40,
    ),
    GestureDetector(
      onTap: (){
        print('user icon pressed');
      },
      child: Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Icon(FontAwesomeIcons.user,color: Colors.white,)),
    ),
  ],
);
  }

  Widget _smallDisplay(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "Let\'s Learning",

              style: (TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
                color: Colors.indigo,
              )),
            ),
            Text('improve your kids ablility.',style: TextStyle(
              fontSize: 10.0,
              letterSpacing: 3.0,
            ),
            ),
          ],
        ),
        // Container(child: ,),
        Spacer(),
        SizedBox(
          width: 40,
        ),
        Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Icon(FontAwesomeIcons.userAlt,color: Colors.white,)),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth>500){
          return _bigDisplay();
        }
        else {
         return _smallDisplay();
        }
      },
      ),
    );
}
}

