import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Tasktile extends StatelessWidget {
  final bool booval;
  final String taskName;
  final String? date1; 
  final String? time1; 
  final String descriptionName;
  final String? priority; 
  final Function(bool?)? chekd;
  final Function(BuildContext)? deleteFunction;

  Tasktile({
    super.key,
    required this.booval,
    required this.taskName,
    required this.chekd,
    required this.descriptionName,
    this.date1, 
    this.time1, 
    this.priority,
    required this.deleteFunction,
  });

  Color getPriorityColor() {
    switch (priority) {
      case "Most Important":
        return Colors.red.shade400;
      case "Important":
        return Colors.orangeAccent;
      case "Not so Important":
        return Colors.lightGreenAccent;
      default:
        return Colors.lightBlueAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Slidable(
      direction: Axis.vertical,
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                if (deleteFunction != null) {
                  deleteFunction!(context);
                }
              },
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: getPriorityColor(),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Checkbox(
                value: booval,
                onChanged: chekd,
                activeColor: Colors.black,
              ),
             
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      taskName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 27,
                        decoration: booval ? TextDecoration.lineThrough : TextDecoration.none,
                      ),
                    ),
                    Text(
                      descriptionName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        decoration: booval ? TextDecoration.lineThrough : TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Priority: ${priority ?? '     '}", 
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        decoration: booval ? TextDecoration.lineThrough : TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
             
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Date: ${date1 ?? '        '}", 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: booval ? TextDecoration.lineThrough : TextDecoration.none,
                    ),
                  ),
                  Text(
                    "Time: ${time1 ?? '         '}", 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: booval ? TextDecoration.lineThrough : TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
