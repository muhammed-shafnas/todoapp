import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/functions/drawer.dart';
import 'package:todo/functions/tasktile.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? selectedValue;
  final List<String> dropdownItems = ['Most Important', 'Important', 'Not so Important'];

  final List<List<dynamic>> tasks = [];

  void onChanged(int index) {
    setState(() {
      tasks[index][1] = !tasks[index][1];
      saveTasks(); 
    });
  }

  DateTime? _date;
  String? upsdate;
  TimeOfDay _time = TimeOfDay.now();
  final taskController = TextEditingController();
  final descriptionController = TextEditingController();
  final selectedValueController = TextEditingController();

  void showDate() {
  showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime(2030),
  ).then((DateTime? value) {
    if (value != null) {
      setState(() {
        _date = value;
        upsdate = "${_date!.day}/${_date!.month}/${_date!.year}";
      });
    }
  });
}

  void showTime() {
  showTimePicker(context: context, initialTime: TimeOfDay.now()).then((TimeOfDay? value) {
    if (value != null) {
      setState(() {
        _time = value;
      });
    }
  });
}

  void deleteTask(int index) async {
    setState(() {
      tasks.removeAt(index);
      saveTasks();
    });
  }

  void saveTasks() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedTasks = tasks.map((task) {
      return task.join('|');
    }).toList();
    await prefs.setStringList('tasks', savedTasks);
  }

  void loadTasks() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> savedTasks = prefs.getStringList('tasks') ?? [];
  
  setState(() {
    tasks.clear();
    for (String task in savedTasks) {
      List<String> taskDetails = task.split('|');
      tasks.add([
        taskDetails[0],
        taskDetails[1] == 'true',
        taskDetails[2],
        taskDetails[3] == 'null' ? null : taskDetails[3],
        taskDetails[4] == 'null' ? null : taskDetails[4], 
        taskDetails[5] == 'null' ? null : taskDetails[5], 
      ]);
    }
  });
}

  void buttonPressed() async {
  if (taskController.text.isEmpty) {
    const snackBar = SnackBar(
      content: Text("Title cannot be empty!"),
      backgroundColor: Colors.blue,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  } else {
    if (upsdate == null) {
      upsdate = null; 
    }

    String formattedTime = _time.format(context);
    
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    
    List<String> savedTasks = prefs.getStringList('tasks') ?? [];
    
    String newTask = [
      taskController.text,
      false.toString(),
      descriptionController.text,
      selectedValueController.text,
      upsdate ?? 'null', 
      formattedTime == TimeOfDay.now().format(context) ? 'null' : formattedTime, 
    ].join('|');

    savedTasks.add(newTask);
    await prefs.setStringList('tasks', savedTasks);

    taskController.clear();
    descriptionController.clear();
    selectedValueController.clear();
    setState(() {
      selectedValue = null;
      _time = TimeOfDay.now();
      _date = null;
      upsdate = null;
    });
    Navigator.of(context).pop();
    loadTasks();
  }
}

 void openAddTaskDialog() {
  taskController.clear();
  descriptionController.clear();
  selectedValue = null;
  selectedValueController.clear();
  _date = null;
  _time = TimeOfDay.now();
  upsdate = null;

    showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.blue,
        content: Container(
          height: 500,
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "ADD TASK",
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: taskController,
                decoration: InputDecoration(
                  border: GradientOutlineInputBorder(
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.white],
                    ),
                  ),
                  hintText: "Title",
                  hintStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.blue,
                  filled: true,
                ),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                isExpanded: true,
                value: selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue;
                    selectedValueController.text = newValue ?? '';
                  });
                },
                decoration: InputDecoration(
                  border: GradientOutlineInputBorder(
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.white],
                    ),
                  ),
                  labelText: 'Select Priority',
                  labelStyle: TextStyle(color: Colors.black),
                  contentPadding: EdgeInsets.all(10.0),
                ),
                dropdownColor: Colors.blue,
                style: TextStyle(color: Colors.black),
                items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  border: GradientOutlineInputBorder(
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.white],
                    ),
                  ),
                  hintText: "Description (Optional)",
                  hintStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.blue,
                  filled: true,
                ),
                maxLines: 5,
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  // Text("Selected Date : ${upsdate ?? 'Not selected'}"),
                  SizedBox(width: 50),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[600],
                    ),
                    onPressed: showDate,
                    child: Text("Select date", style: TextStyle(color: Colors.black)),
                  ),
                 
                  SizedBox(width: 50),
              //   ],
              // ),
              // SizedBox(height: 20),
              // Row(
              //   children: [
              //     Text("Selected Time : ${_time.format(context)}"),
              //     SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[600],
                    ),
                    onPressed: showTime,
                    child: Text("Select time", style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: buttonPressed,
                    child: Text("Add Task", style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[600],
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text("Cancel", style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

  @override
  void initState() {
    super.initState();
    loadTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To Do",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawersss(),
      floatingActionButton: FloatingActionButton(
        onPressed: openAddTaskDialog,
        child: Icon(Icons.add, color: Colors.white),
        tooltip: "Add tasks",
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.blueGrey],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2.2,
          ),
            itemBuilder: (context, index) {
              return Tasktile(
                time1: tasks[index][5],
                date1: tasks[index][4],
                taskName: tasks[index][0],
                booval: tasks[index][1],
                descriptionName: tasks[index][2],
                priority: tasks[index][3],
                chekd: (value) => onChanged(index),
                deleteFunction: (context) => deleteTask(index),
              );
            },
            itemCount: tasks.length,
          ),
        ),
      ),
    );
  }
}
