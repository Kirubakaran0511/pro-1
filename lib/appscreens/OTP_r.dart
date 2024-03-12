import 'package:flutter/material.dart';
import 'package:thannidabba/appscreens/loginpage.dart';

//import 'package:thannidabba/appscreens/welcome.dart';

class OTP extends StatefulWidget{
  @override
  forgotstate createState() {
    // TODO: implement createState
    return forgotstate();
  }
}

class forgotstate extends State<OTP>
{
  
  TextEditingController OTPcontroller = TextEditingController();

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
                  'OTP Verification',
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
                  'Enter your verification code',
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
                
                controller: OTPcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  
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
                  child: const Text('Verify',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                  ),
                  onPressed: () {
                  
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>loginpage()));
                  
                    
                   
                  },
                )
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 400,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Didn't receive code?"),
                TextButton(
                  child: const Text(
                    'Resend',
                    style: TextStyle(fontSize: 15,
                    color: Colors.greenAccent,
                    ),
                  ),
                  onPressed: () {
                   //
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
