import 'package:flutter/material.dart';
import 'package:io_flutter/io_nav.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I/O Flutter App',
      theme: ThemeData(
          primaryColor: Colors.white,
          useMaterial3: true,
          fontFamily: 'Roboto',
          androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
          applyElevationOverlayColor: true,
          scaffoldBackgroundColor: Colors.grey[50],
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              titleTextStyle: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.black),
              iconTheme:
                  IconThemeData(color: Theme.of(context).primaryColorDark)),
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
            headline2: TextStyle(
                fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
            headline3: TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
            headline4: TextStyle(
                fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            headline5: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            headline6: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
            subtitle1: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
            subtitle2: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
            bodyText1: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
            bodyText2: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            button: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
            caption: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
            overline: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
          ),
          colorScheme: ColorScheme.fromSwatch(accentColor: Colors.blue)),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(accentColor: Colors.blue),
        useMaterial3: true,
        androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.black45,
            titleTextStyle: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
            iconTheme:
                IconThemeData(color: Theme.of(context).primaryColorLight)),
      ),
      home: const IONav(),
      themeMode: ThemeMode.system,
    );
  }
}
