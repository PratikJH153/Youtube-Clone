import 'package:flutter/material.dart';

import '../views/home_page.dart';
import '../views/video_view_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Youtube App",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF212020),
      ),
      initialRoute: '/',
      routes: {
        HomePage.routeName: (ctx) => const HomePage(),
        VideoViewPage.routeName: (ctx) => const VideoViewPage(),
      },
    );
  }
}
