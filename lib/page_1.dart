import 'package:flutter/material.dart';
import 'action_button.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.indigoAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Page One',style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
            ),),
            ActionButton(onpress: (){
              Navigator.pop(context);
              print('pressed');
            },),
          ],
        ),
      ),
    );
  }
}
