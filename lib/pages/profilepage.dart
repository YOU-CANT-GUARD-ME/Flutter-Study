import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study4/pages/Flutterpage.dart';
import 'package:study4/pages/homepage.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  final TextEditingController skillsController = TextEditingController();
  List<String> skills = ["Flutter", "Dart", "JavaScript"];

  @override
  void dispose() {
    skillsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: skills.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  child: Card(
                    color: Colors.blue,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(Icons.computer),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              skills[index],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                skills.removeAt(index);
                              });
                            },
                            child: Icon(CupertinoIcons.trash_fill),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Column(
              children: [
                TextField(
                  controller: skillsController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    if(skillsController.text.trim().isNotEmpty) {
                      setState(() {
                        skills.add(skillsController.text.trim());
                      });
                    }
                    skillsController.clear();
                  },
                  child: Text("Add Language"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
