import 'package:flutter/material.dart';
import 'package:study4/pages/profilepage.dart';
import 'package:study4/pages/settingspage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("HOME"),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profilepage()),
                  );
                },
                child: Text("PROFILE"),
              ),

              SizedBox(height: 5),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settingspage()),
                  );
                },
                child: Text("SETTINGS"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
