import 'package:flutter/material.dart';
import 'package:tasks/screens/login.dart';
import 'package:tasks/screens/register.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/imageone.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
           child: ElevatedButton(
                child: Text('Login',style: TextStyle(fontSize: 18,),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical:30),
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              )),
            ),
            SizedBox(
              width:5,
            ),
            Expanded(
           child:   Align(
                alignment: Alignment.bottomCenter,
          child:  ElevatedButton(
              child: Text('Register',style: TextStyle(fontSize: 18,),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registration()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            )),
             ) ],
        )
      ],
    ));
  }
}
