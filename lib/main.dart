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
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      '+ 263 776 70 1531',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.teal.shade900
                      ),
                    ),
                    onTap: () => launchUrlString('tel:+263776701531'),
                  ),
                ),

                GestureDetector(
                  onTap: () =>launchUrlString('mailto:chimototofara@gmail.com'),
                  child: Card(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: ListTile(
                    leading:Icon(Icons.email,color: Colors.teal.shade900,size: 30,),
                     title: Text('chimototofara@gmail.com',style: TextStyle(color: Colors.teal.shade900,fontSize: 19),
                     ),
                      ),

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


