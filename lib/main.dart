import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsaap/ThemeChanger.dart';

import 'HomeScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: Builder(
        builder: (BuildContext context){
          final themeChanger= Provider.of<ThemeChanger>(context);
          return MaterialApp(
            themeMode: themeChanger.themeMode,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                brightness: Brightness.light,
                primarySwatch: Colors.teal,
                fontFamily: "Poppins",
                textTheme:  TextTheme(
                  headline1: TextStyle(color: Colors.black),
                  headline2: TextStyle(color: Color(0xff25292B)),
                  headline3: TextStyle(color: Color(0xff25292B)),
                  headline4: TextStyle(color: Color(0xff25292B)),
                  headline5: TextStyle(color: Color(0xff25292B)),
                  headline6: TextStyle(color: Color(0xff25292B)),

                ),
                iconTheme: IconThemeData(
                    color: Colors.grey.shade600
                )
            ),
            darkTheme: ThemeData(
              fontFamily: "Poppins",
              brightness: Brightness.dark,
              textTheme: TextTheme(
                headline1: TextStyle(color: Colors.white),
                headline2: TextStyle(color: Colors.white),
                headline3: TextStyle(color: Colors.white),
                headline4: TextStyle(color: Colors.white),
                headline5: TextStyle(color: Colors.white),
                headline6: TextStyle(color: Colors.white),
              ),
              iconTheme: IconThemeData(
                  color: Colors.grey
              ),
            ),
            home: HomeScreen(),
          );
        }

    )

  );
  }
}