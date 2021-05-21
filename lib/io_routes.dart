import 'package:flutter/material.dart';
import 'package:io_flutter/agenda/agenda.dart';
import 'codelabs/codelabs.dart';
import 'package:io_flutter/info/info.dart';
import 'package:io_flutter/schedule/schedule.dart';
import 'package:io_flutter/settingsPage/settings.dart';

import 'home/home_screen.dart';

const String homeRoute = 'Home';
const String scheduleRoute = 'Schedule';
const String agendaRoute = 'Agenda';
const String codelabsRoute = 'Codelabs';
const String infoRoute = 'Info';
const String settingsRoute = 'Settings';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case scheduleRoute:
        return MaterialPageRoute(builder: (_) => ScheduleScreen());
      case agendaRoute:
        return MaterialPageRoute(builder: (_) => AgendaScreen());
      case codelabsRoute:
        return MaterialPageRoute(builder: (_) => CodelabsScreen());
      case infoRoute:
        return MaterialPageRoute(builder: (_) => InfoScreen());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
        return MaterialPageRoute(builder: (BuildContext context) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/img/io_logo.png'),
                    Text('The ${settings.name} page cannot be found'),
                    ElevatedButton(
                      child: Text('Go back home'),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'Home');
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        });
    }
  }
}
