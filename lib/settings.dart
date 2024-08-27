import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';
import 'feedback.dart';
import 'help.dart';

class TodoSettings extends StatelessWidget {
  const TodoSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Settings",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.blue, Colors.blueGrey])),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  ListTile(
                      leading: Icon(Icons.help),
                      title: Center(child: Text("Help")),
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Help()))),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.feedback),
                    title: Center(child: Text("Feedback")),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FeedbackToDo())),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                      onPressed: () async{
                        final prefs=await SharedPreferences.getInstance();
                        await prefs.remove("IsUserLogin");
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginTodo(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        textStyle: TextStyle(fontSize: 18),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 740),
                          Text(
                            "Logout",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(Icons.logout)
                        ],
                      )),
                ],
              ),
            )
            )
            );
  }
}
