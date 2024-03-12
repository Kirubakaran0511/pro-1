import 'package:flutter/material.dart';
import 'package:thannidabba/appscreens/loginpage.dart';
import 'package:thannidabba/appscreens/OTP_r.dart';
class registerscreen extends StatefulWidget{
  @override
  registerscreenstate createState() {
    // TODO: implement createState
    return registerscreenstate();
  }
}

class registerscreenstate extends State<registerscreen>{

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ConfirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(10,10,10,30),
                child: const Text(
                  'Hello! register to get started',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              ),
              Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.grey)),
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: 'arunkumar123'
                ),
                cursorColor: Colors.grey,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.grey)),
                  border: OutlineInputBorder(),
                  labelText: 'email/phone number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.grey)),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                obscureText: true,
                controller: ConfirmpasswordController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.grey)),
                  border: OutlineInputBorder(),
                  labelText: ' Confirm Password',
                ),
              ),
            ),

            Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('Register', style: TextStyle(color: Colors.white, fontSize: 20),) ,
                  onPressed: () {
                    print(nameController.text);
                    print(emailController.text);
                    print(passwordController.text);
                    print(ConfirmpasswordController.text);
                    {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => OTP()));
                  }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                )
            ),

             Row(
              children: <Widget>[
                const Text('Already have an account?'),
                TextButton(
                  child: const Text(
                    'Login Now',
                    style: TextStyle(fontSize: 15,
                    color: Colors.greenAccent), 
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
        ),
      ),
    );
  }
  
}