import 'package:facebook/items/post_item.dart';
import 'package:facebook/items/story_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Home", style: TextStyle(color: Colors.white, fontSize: 25),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __)=> StoryItem(), 
                separatorBuilder: (_, __)=> const SizedBox(width: 10,), 
                itemCount: 10),
            ),
            Expanded(
              flex: 8,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (_, __)=> PostItem(), 
                separatorBuilder: (_, __)=> const SizedBox(height: 20,), 
                itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}