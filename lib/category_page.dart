import 'package:flutter/material.dart';
import 'header_info.dart';
import 'card_widget.dart';

class Category extends StatelessWidget {
  Category({required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          color: colour,
          child: Column(
            children: [
              HeaderInfo(),
              LayoutCard(
                  gcolor1: Colors.teal,
                  gcolor2: Colors.tealAccent,
                  headerText: 'Learning',
                  subText: 'Alphabet',
                  onPress: () {print('pressed');}),
              LayoutCard(
                  gcolor1: Colors.red,
                  gcolor2: Colors.redAccent,
                  headerText: 'Quiz',
                  subText: 'Alphabet',
                  onPress: () {}),
              LayoutCard(
                  gcolor1: Colors.blue,
                  gcolor2: Colors.blueAccent,
                  headerText: 'Learning',
                  subText: 'Animal',
                  onPress: () {}),
              LayoutCard(
                  gcolor1: Colors.green,
                  gcolor2: Colors.greenAccent,
                  headerText: 'Quiz',
                  subText: 'Animal',
                  onPress: () {}),
              // AvatarGroup(),
              // ProfileAvatar(),
              // ActionCall(),
              // StoryGroup(),
              // TabView(),
            ],
          ),
        ),
      ),
    );
  }
}
