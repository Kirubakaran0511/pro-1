import 'package:flutter/material.dart';
import 'package:thannidabba/appscreens/registerscreen.dart';
import 'package:thannidabba/appscreens/forgot_password.dart';
import 'package:thannidabba/appscreens/home.dart';


class loginpage extends StatefulWidget{
  @override
  loginpagestate createState() {
    // TODO: implement createState
    return loginpagestate();
  }
}

class loginpagestate extends State<loginpage>
{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          // Container(
          //   alignment: Alignment.topLeft,
          //   padding: const EdgeInsets.all(10),
          //   height: 100,
          //   child: ElevatedButton.icon(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.white,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10.0)
          //       )
          //     ),
          //   onPressed: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
          //   },
          //   //icon: Icon(Icons.arrow_back_sharp),
          //    label: Text('<',
          //    style: TextStyle(
          //     fontSize: 25,
          //    ),), 
          //   )
          // ),
          Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome back! Glad to see you, Again!',
                  style: TextStyle(fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                  ),
                ),
                ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'arunkumar123@gmail.com'
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: TextButton(
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => forgot()));
              },
              child: const Text('Forgot Password?',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
              ),
              ),
            ) ,
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
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
                    print(nameController.text);
                    print(passwordController.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                  },
                )
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 250,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 15,
                    color: Colors.greenAccent,
                    ),
                  ),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => registerscreen()));
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