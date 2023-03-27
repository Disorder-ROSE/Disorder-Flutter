import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class TestPage extends StatefulWidget{
  const TestPage({super.key});


  @override
  // ignore: library_private_types_in_public_api
  _TestPageState createState()=>_TestPageState();
}

class _TestPageState extends State<TestPage>{
  FirebaseFirestore fireStores=FirebaseFirestore.instance;
  var name="??";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:const Text("테스트페이지"),),
      body: Center(
        child:Column(
          children:[
            const SizedBox(height: 100,),
            Text(name),
            ElevatedButton(
              onPressed: () async{
                DocumentSnapshot test1docData=await fireStores.collection('Test').doc('test1doc').get();
                print(test1docData.id);
              },
              child:const Text('데이터 불러오기')
            )
          ],
        ),
      ),
    );
  }
}