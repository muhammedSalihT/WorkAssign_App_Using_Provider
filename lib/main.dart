import 'package:flutter/material.dart';
import 'package:project_mypcot/screens/home/providers/homescreen_controller.dart';
import 'package:project_mypcot/screens/home/views/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(
          create: (context) => HomeScreenProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white.withOpacity(.92),
            primaryColor: Colors.white.withOpacity(.5)),
        home:  HomeScreen(),
      ),
    );
  }
}
