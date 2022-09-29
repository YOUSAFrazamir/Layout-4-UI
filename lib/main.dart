import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var myAppBar = AppBar(title: Text("Layout 5"),centerTitle: true,leading: Icon(Icons.menu),);

  var circle = Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(50)
    ),
    child: Center(child: Text("25",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

  );

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar,
        body: Center(
          child: Stack(
             children: [
               Image.network('https://cdn0.iconfinder.com/data/icons/apple-apps/100/Apple_Messages-512.png',fit: BoxFit.cover,height: 100,width: 100,),
               circle

             ],
          ),
        )
        ),
      );
  }
}