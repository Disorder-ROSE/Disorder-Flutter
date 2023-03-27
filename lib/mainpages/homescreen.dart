import 'package:flutter/material.dart';
import '../cards/PostCard.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState()=>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return Container(
      child:ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index){
          return PostCard(
            number:index,
          );
        }
      )
    );
  }
}