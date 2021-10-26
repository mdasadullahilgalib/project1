import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project1/second.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  _firstState createState() => _firstState();
}

class _firstState extends State<first> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), ()=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>second()), (route) => false));



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("I'm Second page"),

            SizedBox(height: 50,),

            Image.asset('assets.zz.png',width: 200,height: 150,),

            RaisedButton(onPressed: (){

              Navigator.pop(context);

            },
              color: Colors.indigo,

              child: Text("Go Back To Previous Page"),
            )

          ],

        ),
      ),

    );
  }
}

