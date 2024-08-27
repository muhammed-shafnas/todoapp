import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText=true;

  @override
  void initState() {
    super.initState();
    _loadCredentials();
  }

  void _loadCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      usernameController.text = prefs.getString('username') ?? 'todo';
      passwordController.text = prefs.getString('password') ?? 'todo';
    });
  }

  void _saveCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', usernameController.text);
    await prefs.setString('password', passwordController.text);
    final snackBar = SnackBar(
      content: Text("Credentials Changed!"),
      backgroundColor: Colors.blue,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _togglePasswordVisibility(){
    setState(() {
      _obscureText=!_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.blueGrey]
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              height: 500,
              width: 600,
              decoration: BoxDecoration(
          color: Colors.blue,borderRadius: BorderRadius.circular(30)
        ),
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  SizedBox(height: 30),
                  Center(child:
                   Text("CHANGE CREDENTIALS",
                   style: TextStyle(color:Colors.black45,
                   fontWeight: FontWeight.bold,
                   fontSize: 18 ),)),
                  SizedBox(height: 70),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      border: GradientOutlineInputBorder(
                        gradient: LinearGradient(
                          colors: [Colors.black, Colors.white],
                        ),
                      ),
                      hintText: "Change Username",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    controller: passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      border: GradientOutlineInputBorder(
                        gradient: LinearGradient(
                          colors: [Colors.black, Colors.white],
                        ),
                      ),
                      hintText: "Change Password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(icon: Icon(_obscureText?Icons.visibility:Icons.visibility_off),
                      onPressed: _togglePasswordVisibility,)
                    ),
                  ),
                  SizedBox(height: 160),
                  ElevatedButton(
                    onPressed: _saveCredentials,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                      backgroundColor: Colors.blue[600],
                    ),
                    child: Text("Save", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
