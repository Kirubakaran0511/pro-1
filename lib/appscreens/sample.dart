import 'package:flutter/material.dart';

class sample extends StatefulWidget{
  @override
  samplestate createState() {
    // TODO: implement createState
    return samplestate();
  }
  
}

class samplestate extends State<sample>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          //AssetImage assetimage = AssetImage('images/TD.png');
          Image.asset('images/TD.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
          
          Material(
            color: Colors.transparent,
            child: Center(
              child: Text('Got it'),
            ),
          )
        ],
      ),
    );
  }
  
}