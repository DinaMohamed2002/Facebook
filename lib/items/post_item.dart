import 'package:flutter/material.dart';

class PostItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(child: Icon(Icons.person, color: Colors.white,)
                  , radius: 20,
                  backgroundColor: Colors.black,
                ),
                SizedBox(width: 8,),
                Column(
                  children: [
                    Text("Owner" ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Text("3h"),
                         SizedBox(width: 5,),
                        Icon(Icons.public, size: 15,)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("My Post", style: TextStyle(fontSize: 25, ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text("100"),
                const SizedBox(width: 8,),
                Image.asset("assets/images/like.jpg", width: 33,),
                const Spacer(),
                Text("100 comment")
              ],
            ),
          ),
          const Divider(color: Colors.grey, thickness: 1, height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset("assets/images/singleLike.jpg", width: 20, height: 20,),
                const Text("Like"),
                const Spacer(),
                Image.asset("assets/images/comment.jpg", width: 20, height: 20,),
                const Text("Comment"),
                const Spacer(),
                Image.asset("assets/images/share.png",width: 20, height: 20),
                const Text("Share"),
              ],
            ),
          ),
          const Divider(color: Colors.grey, thickness: 1, height: 20,),
        ],
    );
  }
}