import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settingspage extends StatefulWidget {
  const Settingspage({super.key});

  @override
  State<Settingspage> createState() => _SettingspageState();
}

class _SettingspageState extends State<Settingspage> {
  TextEditingController todoController = TextEditingController();
  List<bool> isChecked = [
    false,
    false,
    false,
  ];
  List<String> todo = [
    "Wash The Dishes",
    "Walk The Dog",
    "Make The Bed",
  ];

  @override
  void dispose() {
    todoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      body: Padding(
        padding: EdgeInsetsGeometry.only(top: 60),
        child: Column(
          children: [
            Text(
              "TODO LIST",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 50),

            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 20,
                vertical: 0,
              ),
              child: TextField(
                controller: todoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                      width: 2,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow[800]!,
                      width: 2,
                    )
                  )
                ),
              ),
            ),

            SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () {
                if (todoController.text.trim().isNotEmpty) {
                  setState(() {
                    todo.add(todoController.text);
                    isChecked.add(false);
                  });
                }
                todoController.clear();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
              ),
              child: Text("Add Task"),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: todo.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    child: Card(
                      color: Colors.yellow,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Row(
                          children: [
                            Checkbox(
                              value: isChecked[index],
                              onChanged: (value) {
                                setState(() {
                                  isChecked[index] = value!;
                                });
                              },
                              fillColor: WidgetStateProperty.resolveWith<Color>((states) {
                                if (states.contains(WidgetState.selected)) {
                                  return Colors.yellow[700]!;
                                }
                                return Colors.yellow;
                              }),
                            ),

                            Expanded(
                              child: Text(
                                todo[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: isChecked[index]
                                        ? Colors.grey
                                        : Colors.black,
                                  decoration: isChecked[index]
                                      ? TextDecoration.lineThrough
                                      : TextDecoration.none,
                                ),
                              ),
                            ),

                            IconButton(
                              onPressed: () {
                                setState(() {
                                  todo.removeAt(index);
                                });
                              },
                              icon: Icon(CupertinoIcons.trash),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
