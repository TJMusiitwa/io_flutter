import 'package:flutter/material.dart';
import 'package:io_flutter/io_routes.dart' as appRouter;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I/O Flutter App',
      onGenerateRoute: appRouter.Router.generateRoute,
      initialRoute: appRouter.homeRoute,
    );
  }
}
