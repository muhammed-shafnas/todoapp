import 'package:flutter/material.dart';

class TodoPrivacy extends StatelessWidget {
  const TodoPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Privacy Policy",
          style: TextStyle(
            fontSize: 30,
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
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(8),
            width: 900,
            height: 900,
            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30)),
            child: ListView(
              children:[
                SizedBox(height: 30),
                Center(
                  child: Text("LAST UPDATED: 10 August 2024",style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white)),
                ),
                SizedBox(height: 50),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     '1. INTRODUCTION',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 SizedBox(height: 20),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Welcome to ToDo App. We are committed to protecting your privacy and ensuring a secure experience while using our to-do application. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our app to manage tasks.',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 SizedBox(height: 50),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     '2. INFORMATION WE COLLECT',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 SizedBox(height: 20),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'When you use our app, we may collect personal information that you voluntarily provide, including:',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Usage Data: We may collect information about your interactions with the app, including usage patterns and preferences.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Task Details: Title, description, priority, date, and time of tasks you create.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.left,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Device Information: We may collect information about the device you use to access the app, including the device model, operating system, and unique device identifiers.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 50),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     '3. HOW WE USE YOUR INFORMATION',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 20),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'We use the information we collect to:',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Provide and Improve Services: To deliver and enhance the functionality of the app, including task management features.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Account Management: To manage your account and provide you with customer support.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Personalization: To personalize your experience and improve the app based on your feedback and usage patterns.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Communication: To communicate with you about updates, new features, or other information related to the app.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 50),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     '4. HOW WE SHARE YOUR INFORMATION',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 20),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'We do not sell or rent your personal information to third parties. However, we may share your information in the following circumstances:',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'With Service Providers: We may share your information with third-party service providers who assist us in operating and maintaining the app.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'For Legal Reasons: We may disclose your information if required by law, or in response to legal processes or requests.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Business Transfers: In the event of a merger, acquisition, or any other form of business transfer, your information may be transferred as part of that transaction.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 50),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     '5. DATA SECURITY',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 20),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'We implement appropriate technical and organizational measures to protect your information from unauthorized access, disclosure, alteration, or destruction. However, please be aware that no method of transmission over the internet or electronic storage is 100% secure.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  SizedBox(height: 50),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     '6. YOUR CHOICES',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 20),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'You have the following choices regarding your information:',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Access and Update: You can access and update your task information through the app’s settings.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Account Deletion: If you wish to delete your account and associated information, please contact us at todoapp@gmail.com.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 50),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     '7. CHILD PRIVACY',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  SizedBox(height: 20),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Our app is not intended for use by children under the age of 13. We do not knowingly collect personal information from children under 13. If we become aware that we have collected such information, we will take steps to delete it.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  SizedBox(height: 50),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     '8. CHANGES TO PRIVACY POLICY',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 20),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'We may update this Privacy Policy from time to time. We will notify you of any significant changes by posting the new Privacy Policy on this page. We encourage you to review this Privacy Policy periodically to stay informed about how we are protecting your information.',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 50),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     '9. CONTACT US',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                   SizedBox(height: 20),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at:',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     '8281469981',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'or',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
                  Align(
                   alignment: Alignment.center,
                   child: Text(
                     'todoapp@gmail.com',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
                     textAlign: TextAlign.center,
                   ),
                  ),
              ],
            ),
          ),
        ),
      ),
      )
    );
  }
}
