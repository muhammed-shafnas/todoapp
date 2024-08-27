import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String bname;
  final VoidCallback onPressed; 

  CustomButton({super.key, required this.bname, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[600],
      ),
      child: Text(bname),
    );
  }
}
