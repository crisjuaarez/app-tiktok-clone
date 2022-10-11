import 'package:flutter/material.dart';

import 'presentation/views/home/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      title: 'TikTok App',
      theme: ThemeData.dark().copyWith(
        iconTheme: const IconThemeData(size: 32, color: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
