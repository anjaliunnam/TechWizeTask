import 'package:flutter/material.dart';
import 'package:tasks/screens/login.dart';


class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
              labelText: 'Email *',
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
              border: OutlineInputBorder(borderSide: BorderSide()),
            )),
          ),

          ElevatedButton(
            child: Text('SignUp'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 140, vertical: 8),
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
