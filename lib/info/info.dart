import 'package:flutter/material.dart';
import 'package:io_flutter/info/event_tab.dart';
import 'package:io_flutter/info/faq_tab.dart';
import 'package:io_flutter/info/travel_tab.dart';
import 'package:io_flutter/io_drawer.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Info'),
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
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Event',
              ),
              Tab(
                text: 'Travel',
              ),
              Tab(
                text: 'FAQ',
              ),
            ],
          ),
        ),
        drawer: IODrawer(),
        body: TabBarView(
          children: <Widget>[
            EventTab(),
            TravelTab(),
            FAQTab(),
          ],
        ),
      ),
    );
  }
}
