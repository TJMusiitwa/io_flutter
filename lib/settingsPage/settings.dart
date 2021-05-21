import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../io_drawer.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _eventTime = false;
  bool _isSelected = false;
  bool _allowNotifications = false;
  bool _sendAnonymData = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              MdiIcons.accountCircleOutline,
              color: Colors.blue.shade800,
              size: 40,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SwitchListTile.adaptive(
              value: _isSelected,
              onChanged: (bool pTime) {
                setState(() {
                  _eventTime = pTime;
                });
              },
              title: Text('Events in Pacific Time Zone (UTC-8)'),
            ),
            SwitchListTile.adaptive(
              value: _isSelected,
              onChanged: (bool allowed) {
                setState(() {
                  _allowNotifications = allowed;
                });
              },
              title: Text('Enable notifications'),
            ),
            SwitchListTile.adaptive(
              value: _isSelected,
              onChanged: (bool sendTrue) {
                setState(() {
                  _sendAnonymData = sendTrue;
                });
              },
              title: Text('Send anonymous usage statistics'),
            ),
            Divider(),
            ListTile(
                title: Text(
              'ABOUT',
              style: Theme.of(context).textTheme.bodyText2,
            )),
            ListTile(
              title: Text(
                'Community Guidelines',
              ),
              onTap: () {
                launch('https://developers.google.com/community-guidelines');
              },
            ),
            ListTile(
              title: Text('Terms of service'),
              onTap: () {
                launch('https://policies.google.com/terms');
              },
            ),
            ListTile(
              title: Text('Open sources licenses'),
              onTap: () {
                showLicensePage(
                    context: context,
                    applicationIcon: Image.asset('assets/img/io_logo.png'),
                    applicationName: 'I/O Flutter App',
                    applicationVersion: '2.0.0');
              },
            ),
            ListTile(
                title: Text(
              'Version 2.0.0',
              style: Theme.of(context).textTheme.subtitle2,
            )),
            SizedBox(height: 10),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlutterLogo(
                    size: 30,
                  ),
                  Text(
                    'Built with ❤ in Flutter ',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: IODrawer(),
    );
  }
}
