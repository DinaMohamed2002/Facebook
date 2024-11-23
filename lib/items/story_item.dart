import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Stack(
        children: [
          Image.asset("assets/images/facebookStory.jpg"),
          const CircleAvatar(child: Icon(Icons.person, color: Colors.white,)
          , radius: 20,
          backgroundColor: Colors.indigo,
          ),
          const Positioned(
            bottom: 0,
            left: 10,
            child: Text("Owner", 
            style: TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.bold,
            color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}