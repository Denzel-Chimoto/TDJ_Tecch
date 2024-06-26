import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//remember the main method

import 'package:url_launcher/url_launcher_string.dart';void main() {
  runApp(UF());
}

class UF extends StatelessWidget {
  const UF({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/cadillac3.jpeg'),
                  radius: 60,
                ),
                Text(
                  'Tofara Denzel Chimoto',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'COMPUTER ENGINEER',
                  style: TextStyle(
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 2.5,
                      color: Colors.teal.shade100),
                ),
                SizedBox(
                  width: 200,
                  child: Divider(
                    height: 20.0,
                    thickness: 3.5,
                    color: Colors.teal.shade200,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: ListTile(
                    tileColor: Colors.white,
                    onTap: () =>launchUrlString('mailto:chimototofara@gmail.com'),
                    hoverColor: Colors.red,

                    leading: Icon(
                      Icons.mail,
                    ),
                    title: Text('chimototofara"gmail.com',style: TextStyle(fontSize: 20),),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}


