import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState()=> _HomeState();
}

class _HomeState extends State<Home>{

  int _count=0;
  incrementCounter(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext Context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("This is counting App",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Text(_count.toString(),style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.blue),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: incrementCounter,child: Icon(Icons.add,size: 40,),),
    );
  }
}