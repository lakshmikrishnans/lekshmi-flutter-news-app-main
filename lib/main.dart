import 'package:flutter/material.dart';
import 'package:newstoday_app/providers/news_providers.dart';
import 'package:newstoday_app/screen/category.dart';
import 'package:newstoday_app/screen/home.dart';
import 'package:newstoday_app/screen/news.dart';
import 'package:newstoday_app/screen/newsdetails.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NewsProvider()),
      ],
      child: MaterialApp(
        title: 'NewsToday',
        debugShowCheckedModeBanner: false,
        routes: {
          'home': (context) => HomePage(),
          'category': (context) => Category(),
          'news': (context) => News(),
          'newsdetails': (context) => NewsDetails()
        },
        initialRoute: 'newsdetails',
      ),
    );
  }
}
