import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Help",  style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),),
      ),
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
            width: 600,
            height: 400,
            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30)),
            child: ListView(
              children: [
                SizedBox(height: 50),
                 Align(alignment: Alignment.center,
                  child: Text(
                    'The ToDo app is a task management app developed by ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),),
                  SizedBox(height: 20),
                   Align(alignment: Alignment.center,
                  child: Text(
                    'the students of St Berchmans College,Changanassery as part of',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),),
                  SizedBox(height: 20),
                   Align(alignment: Alignment.center,
                  child: Text(
                    'their internship project.This app will be extremely useful if you',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),),
                  SizedBox(height: 20),
                  Align(alignment: Alignment.center,
                  child: Text(
                    'wish to complete tasks within a certain date and time period.This',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),),
                  SizedBox(height: 20),
                  Align(alignment: Alignment.center,
                  child: Text(
                    'app allows you to add a title to the task,select a priority,provide a',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),),
                  SizedBox(height: 20),
                   Align(alignment: Alignment.center,
                  child: Text(
                    'description of the task and finally select the date and time within',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),),
                  SizedBox(height: 20),
                   Align(alignment: Alignment.center,
                  child: Text(
                    'which the task should be completed.Once finished,simply click',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),),
                  SizedBox(height: 20),
                   Align(alignment: Alignment.center,
                  child: Text(
                    'on the add button to add the task to the home page.',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),)
              ],
            ),
          ),
        ),
      ),
      )
    );
  }
}