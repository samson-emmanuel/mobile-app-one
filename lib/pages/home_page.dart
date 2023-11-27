import 'package:flutter/material.dart';
import 'package:smartyou/constants/const_file.dart';
import 'package:smartyou/widgets/cards_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kdouble5,
            ),
            CardWidget(
              title: 'Rocket',
              imagepath: 'images/rocket.png',
            ),
            Row(
              children: [
                Expanded(
                    child: CardWidget(
                  title: 'Space',
                  imagepath: 'images/space.png',
                )),
                Expanded(
                    child: CardWidget(
                  title: 'Travel',
                  imagepath: 'images/travel.png',
                )),
              ],
            ),
            CardWidget(
              title: 'Yeah',
              imagepath: 'images/yeah.png',
            )
          ],
        ),
      ),
    );
  }
}
