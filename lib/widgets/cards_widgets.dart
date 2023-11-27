import 'package:flutter/material.dart';
import 'package:smartyou/class/item_class.dart';
import 'package:smartyou/constants/const_file.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box,});

  final ItemClass box; 

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(kdouble10),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(box.imagepath),
            Text(
              box.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
