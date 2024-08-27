import 'package:flutter/material.dart';

class TodoAbout extends StatelessWidget {
  const TodoAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "About",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[
            Colors.blue,         
           Colors.blueGrey])
        ),
        child:  
       Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(40),
            width: 600,
              height: 900,
              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30)),
            child: ListView(
              children:[
                Text(
                  'Developed By:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                ),
            
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sreelekshmi R',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Prince Suman',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Varsha Remesh',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Muhammed Shafnas',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Rahul Roy',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(height: 70),
                Text(
                  'Insitution:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                ),
                 Align(alignment: Alignment.center,
                  child: Text(
                    'St Berchmans College',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.right,
                  ),), 
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Changanassery,Kottayam',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(height: 70),
                Text(
                  'Course:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                ),
                Align(alignment: Alignment.center,
                  child: Text(
                    'Bachelor of Computer Application(BCA)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.right,
                  ),),
                SizedBox(height: 70),
                Text(
                  'Semester:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                ),
                Align(alignment: Alignment.center,
                  child: Text(
                    'Semester 5',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.right,
                  ))
              ],
            ),
          ),
        ),
      ),
      )
    );
  }
}
