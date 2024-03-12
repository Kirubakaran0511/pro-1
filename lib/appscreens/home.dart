import 'package:flutter/material.dart';



class home extends StatefulWidget
{
  @override
  homestate createState() {
    return homestate();
  }

}

class homestate extends State<home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Stack(
        children: [
          Image.asset('images/TD.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
          Material(
            color: Colors.transparent,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            transformAlignment: Alignment.centerLeft,
            //width: 450,
            height: 550,
            color: Colors.white.withOpacity(0.0),
            alignment: Alignment.center,
            child: Text(' vetrigarama mudichitten!!', style: TextStyle(color: Color.fromARGB(255, 42, 238, 20), fontSize: 25),
            
            ),
          ),
          
             
          
        ],
      ),
    )
        ],
      )
      ,
    );
    
  }

}