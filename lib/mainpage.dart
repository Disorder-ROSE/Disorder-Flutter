import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './mainpages/homescreen.dart';
import './mainpages/mylikescreen.dart';
import './mainpages/myscreen.dart';
import './mainpages/showgridscreen.dart';
import 'testpage.dart';

class MainPage extends StatefulWidget{

  @override
  _MainPageState createState()=>_MainPageState();
}

class _MainPageState extends State<MainPage>{
  int _selectedIndex=0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(
      label:'홈',
      icon:Icon(Icons.home_filled),
    ),
    BottomNavigationBarItem(
      label:'모아보기',
      icon:Icon(Icons.grid_view),
    ),
    BottomNavigationBarItem(
      label:'좋아요누른 컨텐츠',
      icon:Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      label:'내 페이지',
      icon:Icon(Icons.account_circle),
    ),
  ];
  List pages=[
    HomeScreen(),
    ShowGridScreen(),
    MyLikeScreen(),
    MyScreen(),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: (){
            Get.to(TestPage());
          },
          child: Text('Disorder-Rose',style:TextStyle(fontFamily:'Lobster',fontSize:30,color:Colors.black),),
        ),
        centerTitle:true,
        backgroundColor:Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, //Bar의 배경색
        selectedItemColor: Colors.black, //선택된 아이템의 색상
        unselectedItemColor: Colors.grey.withOpacity(.60), //선택 안된 아이템의 색상
        selectedFontSize: 14, //선택된 아이템의 폰트사이즈
        unselectedFontSize: 10, //선택 안된 아이템의 폰트사이즈
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap:(int index){
          setState((){
            _selectedIndex=index;
          });
        },
        items:bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}

/*title: Text('Disorder-Rose',style:TextStyle(fontFamily:'Lobster',fontSize:30,color:Colors.black),),
centerTitle:true,
backgroundColor:Colors.white,*/