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
                title: 'Tech',
                imagepath: 'images/tech.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: CardWidget(
                  box: ItemClass(
                    title: 'Business',
                    imagepath: 'images/business.png',
                  ),
                )),
                Expanded(
                    child: CardWidget(
                  box: ItemClass(
                    title: 'Sport',
                    imagepath: 'images/sport.png',
                  ),
                )),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: 'Entertainment',
                imagepath: 'images/entertainment.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
