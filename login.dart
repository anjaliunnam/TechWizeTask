import 'package:flutter/material.dart';
// import 'package:tasks/screens/register.dart';
import 'package:tasks/screens/registrationtwo.dart';
// import 'package:tasks/screens/login.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Log In', style: TextStyle(fontSize: 50, color: Colors.black, fontWeight: FontWeight.bold)),
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
            child: Text('Login'),
            onPressed: () {
               Navigator.push(
                     context,
                      MaterialPageRoute(builder: (context) => RegistrationTwo()),
          );

            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal:140, vertical: 8),
                textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          ),
          // ElevatedButton(
          //     onPressed: () {
          //         
          //     },
          //     child: Text('Next')),
        ],
      ),
    );
  }
}
