import 'package:flutter/material.dart';
import 'package:tasks/screens/login.dart';
// import 'package:tasks/screens/login.dart';

class RegistrationTwo extends StatefulWidget {
  const RegistrationTwo({Key? key}) : super(key: key);

  @override
  _RegistrationTwoState createState() => _RegistrationTwoState();
}

class _RegistrationTwoState extends State<RegistrationTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Register', style: TextStyle(fontSize: 50, color: Colors.black, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
            child: TextFormField(
                decoration: const InputDecoration(
              // icon: Icon(Icons.person),
              hintText: 'What do people call you?',
              labelText: 'Name *',
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
              border: OutlineInputBorder(borderSide: BorderSide()),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: TextFormField(
                decoration: const InputDecoration(
              // icon: Icon(Icons.person),
              hintText: 'password should e more six characters',
              labelText: 'Password *',
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
              border: OutlineInputBorder(borderSide: BorderSide()),
            )),
          ),

          ElevatedButton(
            child: Text('Next'),
            onPressed: () {
          //      Navigator.push(
          //            context,
          //             MaterialPageRoute(builder: (context) => Login()),
          // );

            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal:140, vertical: 8),
                textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          ),
           Text('Enter a valid email? before your logined Email id'),

          
        ],
      ),
    );
  }
}
