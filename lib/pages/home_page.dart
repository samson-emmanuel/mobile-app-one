import 'package:flutter/material.dart';
import 'package:smartyou/class/item_class.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: kdouble5,
            ),
            CardWidget(
              box: ItemClass(
                title: 'Rocket',
                imagepath: 'images/rocket.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: CardWidget(
                  box: ItemClass(
                    title: 'Space',
                    imagepath: 'images/space.png',
                  ),
                )),
                Expanded(
                    child: CardWidget(
                  box: ItemClass(
                    title: 'Travel',
                    imagepath: 'images/travel.png',
                  ),
                )),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: 'Yeah',
                imagepath: 'images/yeah.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
