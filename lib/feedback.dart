import 'package:flutter/material.dart';

class FeedbackToDo extends StatelessWidget {
  const FeedbackToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Feedback",
        style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
      ),
    ),
    body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[
            Colors.blue,         
           Colors.blueGrey])
        ),
        child:  
    Center(child: Container(
      padding: EdgeInsets.all(10),
      width: 600,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.blue,borderRadius: BorderRadius.circular(30)
      ),
     child: ListView(
      children: [
        SizedBox(height: 20),
         Align(
            alignment: Alignment.center,
            child: Text(
            'Provide your valuable feedbacks and suggestions through:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
            textAlign: TextAlign.center,
    )),
         SizedBox(height: 10,),
          Align(
            alignment: Alignment.center,
            child: Text(
            'https://www.feedback/todoapp.com',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
            textAlign: TextAlign.center,
    )),
         SizedBox(height: 10,),
           Align(
            alignment: Alignment.center,
            child: Text(
            'so that we can make improvements and provide the best user',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
            textAlign: TextAlign.center,
    )),
         SizedBox(height: 10,),
          Align(
            alignment: Alignment.center,
            child: Text(
            'experience. Like the app? Give us a five star rating.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
            textAlign: TextAlign.center,
    )),
          
      ],
     )
    
    )
    )
    )
    );
  }
}