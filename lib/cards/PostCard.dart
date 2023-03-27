import 'dart:math';

import 'package:flutter/material.dart';

class PostCard extends StatefulWidget{
  int number;

  PostCard({required this.number});

  @override
  _PostCardState createState()=>_PostCardState();
}

class _PostCardState extends State<PostCard>{
  @override
  Widget build(BuildContext context){
    return Container(
      child:Row(
        children:[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height:50,
            width:MediaQuery.of(context).size.width,
            color:Colors.white,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //CircleAvatar(...),
                    SizedBox(width:5,),
                    Text('게시글제목'),
                  ],
                ),
                Text('글쓴이아이디'),
              ],
            )
          ),

        ]
      ),
      //width: double.infinity,
      //height: 400,
      //color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      //child: Center(child:Text(widget.number.toString())),
    );
  }
}