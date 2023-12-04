import 'package:flutter/material.dart';
import 'package:smartyou/constants/notifiers.dart';
import 'package:smartyou/widget_path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'News Dummy App',
          theme: ThemeData(
            brightness: isDark? Brightness.dark: Brightness.light,
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          home: const WidgetPath(),
        );
      },
    );
  }
}
