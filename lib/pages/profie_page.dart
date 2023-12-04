import 'package:flutter/material.dart';
import 'package:smartyou/constants/const_file.dart';
import 'package:smartyou/constants/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          CircleAvatar(
            child: Image.asset('images/yeah.png'),
            radius: 60,
          ),
          const SizedBox(
            height: kdouble10,
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('News App'),
          ),
          const ListTile(
            leading: Icon(Icons.web),
            title: Text('www.newsapp.com'),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('info@newsapp.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = isDarkModeNotifier.value;
        },
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
