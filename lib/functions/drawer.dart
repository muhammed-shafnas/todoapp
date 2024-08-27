import 'package:flutter/material.dart';
import 'package:todo/about.dart';
import 'package:todo/privacy.dart';
import 'package:todo/profile.dart';
import 'package:todo/settings.dart';

class Drawersss extends StatelessWidget {
  const Drawersss({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.blueGrey])),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
              SizedBox(height: 30),
               Center(
                child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                    child: Image(
                      image: AssetImage("assets/avatar.png"),
                    )),
              ),
              SizedBox(height: 15),
              Center(child: Text("todoapp@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45),)),
              SizedBox(height: 30),
             Divider(color: Colors.black26),
           
            ListTile(leading: Icon(Icons.edit),
            title: Text("Edit Profile"),
            onTap:(){
              Navigator.push(context,
              MaterialPageRoute(builder:(context) =>Profile()));
            } ,
            ),
             Divider(color: Colors.black26),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoSettings()),
                );
              },
            ),
            Divider(color: Colors.black26),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy Policy'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoPrivacy()),
                );
              },
            ),
            Divider(color: Colors.black26),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoAbout()),
                );
              },
            ),
            Divider(color: Colors.black26),
            SizedBox(height: 200),
            Center(child: Text("Version 4.0.2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45),))
          ]
        )
        ),
      );
  }
}
