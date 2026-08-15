import 'package:flutter/material.dart';
import 'package:study4/pages/homepage.dart';

  final List<String> skills = [
    "Flutter",
    "Dart",
    "JavaScript",
    "Node.Js",
    "SQL",
  ];

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: skills.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            child: SkillCard(skillName: skills[index]),
          );
        },
      ),
    );
  }
}


class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.skillName,
  });
  
  final String skillName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(
              Icons.computer,
              size: 40,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    skillName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Programming",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
