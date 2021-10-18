import 'package:flutter/material.dart';
import 'package:io_flutter/settingsPage/faq.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final bool _isSelected = false;
  bool _isDarkMode = false;
  bool _allowNotifications = false;
  bool _sendAnonymData = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SwitchListTile.adaptive(
              value: _isDarkMode,
              onChanged: (bool theme) {
                setState(() {
                  _isDarkMode = theme;
                });
              },
              title: const Text('Switch Theme'),
            ),
            SwitchListTile.adaptive(
              value: _isSelected,
              onChanged: (bool allowed) {
                setState(() {
                  _allowNotifications = allowed;
                });
              },
              title: const Text('Enable notifications'),
            ),
            SwitchListTile.adaptive(
              value: _isSelected,
              onChanged: (bool sendTrue) {
                setState(() {
                  _sendAnonymData = sendTrue;
                });
              },
              title: const Text('Send anonymous usage statistics'),
            ),
            const Divider(),
            ListTile(
                title: Text(
              'ABOUT',
              style: Theme.of(context).textTheme.bodyText2,
            )),
            ListTile(
              title: const Text(
                'FAQs',
              ),
              subtitle: const Text('Answers to your questions'),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const FAQPage())),
            ),
            ListTile(
              title: const Text(
                'Community Guidelines',
              ),
              onTap: () {
                launch('https://developers.google.com/community-guidelines');
              },
            ),
            ListTile(
              title: const Text('Terms of service'),
              onTap: () {
                launch('https://policies.google.com/terms');
              },
            ),
            ListTile(
              title: const Text('Open sources licenses'),
              subtitle: const Text(
                  'All the wonderful libraries that made this app possible'),
              onTap: () {
                showLicensePage(
                    context: context,
                    applicationIcon: Image.asset('assets/img/io_logo.png',
                        width: 100, height: 100),
                    applicationName: 'I/O Flutter App',
                    applicationVersion: '2.0.0');
              },
            ),
            //const SizedBox(height: 10),
            Expanded(child: Container()),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const FlutterLogo(
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
            ),
            Center(
                child: Text(
              'Version 2.0.0',
              style: Theme.of(context).textTheme.caption,
            ))
          ],
        ),
      ),
    );
  }
}
