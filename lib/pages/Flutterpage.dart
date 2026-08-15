import 'package:flutter/material.dart';

class Flutterpage extends StatelessWidget {
  const Flutterpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Flutter Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
