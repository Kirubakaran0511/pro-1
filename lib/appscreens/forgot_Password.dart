import 'package:flutter/material.dart';
import 'package:thannidabba/appscreens/OTP_f.dart';
import 'package:thannidabba/appscreens/loginpage.dart';
import 'package:thannidabba/appscreens/new_password.dart';



class forgot extends StatefulWidget{
  @override
  forgotstate createState() {
    // TODO: implement createState
    return forgotstate();
  }
}

class forgotstate extends State<forgot>
{
  
  TextEditingController valuecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(10,10,0,0),
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                  ),
                ),
                ),
                Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(15,0,10,0),
                child: const Text(
                  "Don't worry! It Occurs.",
                  style: TextStyle(fontSize: 15,
                  color: Color.fromARGB(255, 184, 182, 182),
                  fontWeight: FontWeight.bold
                  ),
                ),
                ),
           
            Container(
              height: 60,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                
                controller: valuecontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Mail/Phone number',
                  
                ),
              ),
            ),
          
            Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      
                    )
                  ),
                  child: const Text('send code',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                  ),
                  onPressed: () {
                  
                   print("athula onnum illa");
                   Navigator.push(context, MaterialPageRoute(builder: (context) => OTP_f()));


                  
                    
                   
                  },
                )
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 400,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Remember password?"),
                TextButton(
                  child: const Text(
                    'Login now',
                    style: TextStyle(fontSize: 15,
                    color: Colors.greenAccent,
                    ),
                  ),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>loginpage()));
                  },
                )
              ],
            ),
            ),
        ],
      ),
      ),
    );
  }

}
