import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Settingspage extends StatefulWidget {
  const Settingspage({super.key});

  @override
  State<Settingspage> createState() => _SettingspageState();
}

class _SettingspageState extends State<Settingspage> {
  TextEditingController todoController = TextEditingController();
  List<String> todos = [
    "Walk The Dog",
    "Wash The Dishes",
    "Make My Bed",
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
            Center(
              child: Text(
                "TODO LIST",
                style: TextStyle(
                  fontSize:  30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 20,
                vertical: 0,
              ),
              child: TextField(
                controller: todoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                if (todoController.text.trim().isNotEmpty) {
                  setState(() {
                    todos.add(todoController.text.trim());
                    todoController.clear();
                  });
                }
              },
              child: Text("Add Task"),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    child: Card(
                      color: Colors.yellow[400],
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsGeometry.all(20),
                              child: Text(
                                todos[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          IconButton(
                            onPressed: () {
                              setState(() {
                                todos.removeAt(index);
                              });
                            },
                            icon: Icon(CupertinoIcons.trash),
                          )
                        ],
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
