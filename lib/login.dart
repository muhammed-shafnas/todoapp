import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/home.dart';

class LoginTodo extends StatefulWidget {
  const LoginTodo({super.key});

  @override
  State<LoginTodo> createState() => _LoginTodoState();
}

class _LoginTodoState extends State<LoginTodo> {
  String username = "todo";
  String password = "todo";

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _loadCredentials();
  }

  void _loadCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? 'todo';
      password = prefs.getString('password') ?? 'todo';
    });
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.blueGrey]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Center(
                child: Image.asset(
                  "assets/logonew.png",
                  width: 600,
                  height: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    border: GradientOutlineInputBorder(
                      gradient: LinearGradient(
                        colors: [Colors.black, Colors.white],
                      ),
                    ),
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  controller: passwordcontroller,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    border: GradientOutlineInputBorder(
                      gradient: LinearGradient(
                        colors: [Colors.black, Colors.white],
                      ),
                    ),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();

                  if (username == usernamecontroller.text &&
                      password == passwordcontroller.text) {
                    await prefs.setBool('IsUserLogin', true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  } else {
                    const snackBar = SnackBar(
                      content: Text("Invalid Credentials!"),
                      backgroundColor: Colors.blue,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                  backgroundColor: Colors.blue,
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
