import 'package:flutter/material.dart';
import 'package:thannidabba/appscreens/loginpage.dart';



class new_password extends StatefulWidget{
  @override
  new_passwordstate createState() {
    
    return new_passwordstate();
  }
}

class new_passwordstate extends State<new_password>
{
  
  TextEditingController passwordController = TextEditingController();
  TextEditingController resetpasswordController = TextEditingController();

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
                  'Create New Password',
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
                  "Your password must be unique form those previously used.",
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
                
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter New Password',
                  
                ),
              ),
            ),
             Container(
              height: 60,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                
                controller: resetpasswordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm New Password',
                  
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
                  child: const Text('Reset Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                  ),
                  onPressed: () {
                  
                   print("password resetted");
                   Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage()));

                  
                    
                   
                  },
                )
            ),
        
        ],
      ),
      ),
    );
  }

}
