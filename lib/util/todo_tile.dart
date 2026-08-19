import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  String taskName;
  bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(25),
      child: Container(
        padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadiusGeometry.circular(10)
          ),
        child: Row(
          children: [
            // Checkbox(
            //   value: value,
            //   onChanged: onChanged
            // ),
            Text("Make tutorial"),
          ],
        ),
      ),
    );
  }
}
