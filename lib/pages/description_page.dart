// ignore_for_file: must_be_immutable

// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:smartyou/class/item_class.dart';
import 'package:smartyou/constants/const_file.dart';

class DescriptionPage extends StatefulWidget {
 const DescriptionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontsizes = 25;
  String mainTopic = 'News';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                        'This is going to be a simple message displaying here. I want to see how it is going to display long messages in the message box that will pop up for just 4 seconds')));
              },
              icon: const Icon(Icons.info))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kdouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagepath),
              Wrap(
                spacing: kdouble20,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontsizes = 100;
                        mainTopic = 'FootBall';
                      });
                    },
                    child: const Text('Button 1'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontsizes = 100;
                        mainTopic = 'News';
                      });
                    },
                    child: const Text('Button 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontsizes = 100;
                        mainTopic = 'News';
                      });
                    },
                    child: const Text('Button 3'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontsizes = 100;
                        mainTopic = 'News';
                      });
                    },
                    child: const Text('Button 4'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(fontSize: fontsizes),
                ),
              ),
              Text(
                mainTopic,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                baconDescription,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
