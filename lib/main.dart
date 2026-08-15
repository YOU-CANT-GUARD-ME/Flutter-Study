import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final TextEditingController nameController = TextEditingController();
  String name = "";
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 250,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = nameController.text;
                  });
                },
                child: Text("Say Hello"),
              ),

              SizedBox(height: 30),

              Text(
                "Hello, $name!",
              ),
            ],
          ),
        ),
      ),
    );
  }
}




