import 'package:flutter/material.dart';
import 'action_button.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Page Two',style: TextStyle(
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
