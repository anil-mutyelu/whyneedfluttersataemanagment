import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class whysueStateMan extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _whysueStateMan();
  }

}


class _whysueStateMan extends State <whysueStateMan>
{
  var  a=1;

  @override
  void initState() {


    super.initState();
    // Timer(const Duration(seconds: 1), (timer) {
    Timer.periodic(const Duration(seconds: 1), (timer) {


      setState(() {
              a++;
      });


    });
  }


  @override
  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
      body: Center(
        child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
          children: [


            SizedBox(height: 20,),

            Center(
              child: Container(
                width: 200,
                height: 190,
                color: Colors.cyanAccent,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(' date   ${DateTime.now().day} / ${DateTime.now().month}/ ${DateTime.now().year}'),

                      Text(' time   ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}'),


                      Text(' count   ${a}'),

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),


    );
  }



}