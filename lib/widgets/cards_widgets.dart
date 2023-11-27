import 'package:flutter/material.dart';
import 'package:smartyou/constants/const_file.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.title, required this.imagepath});

  final String title; 
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(kdouble10),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(imagepath),
            Text(
              title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text('Description'),
            const SizedBox(
              height: kdouble10,
            )
          ],
        ),
      ),
    );
  }
}
