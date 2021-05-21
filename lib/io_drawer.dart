import 'package:flutter/material.dart';

class IODrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('assets/img/io_logo.png'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).popAndPushNamed("Home");
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Schedule'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).popAndPushNamed("Schedule");
            },
          ),
          ListTile(
            leading: Icon(Icons.view_agenda),
            title: Text('Agenda'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).popAndPushNamed("Agenda");
            },
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Codelabs'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).popAndPushNamed("Codelabs");
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Map'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).popAndPushNamed("Maps");
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Info'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).popAndPushNamed("Info");
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).popAndPushNamed("Settings");
            },
          ),
        ],
      ),
    );
  }
}
