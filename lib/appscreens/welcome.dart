import 'package:flutter/material.dart';
import 'package:thannidabba/appscreens/loginpage.dart';
import 'package:thannidabba/appscreens/registerscreen.dart';


class welcome extends StatefulWidget
{
  @override
  welcomestate createState() {
    return welcomestate();
  }

}

class welcomestate extends State<welcome>{
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
            transformAlignment: Alignment.center,
            //width: 450,
            height: 550,
            color: Colors.white.withOpacity(0.0),
            alignment: Alignment.center,
            child: Text(''),
          ),
          Container(
            color: Colors.transparent,
            height: 50,
            width: 300,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
                  ),
                  child: const Text('Register',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => registerscreen()));
                  },
                ),
          ),
          Container(
            color: Colors.transparent,
            width: 300,
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )
                  ),
                  child: const Text('Login',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage()));
                  },
                ),
          )
        ],
      ),
    )
        ],
      )
      ,
    );
    
  }

}