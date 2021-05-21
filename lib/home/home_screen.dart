import 'package:flutter/material.dart';
import 'package:io_flutter/home/announcements_card.dart';
import 'package:io_flutter/home/schedule_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../io_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
      drawer: IODrawer(),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          children: <Widget>[
            Card(
              child:
                  Image.asset('assets/img/event_card.png', fit: BoxFit.cover),
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('SCHEDULE'),

            //ScheduleCards(),
            SizedBox(
              height: 60,
            ),
            Text('ANNOUNCEMENTS'),
            SizedBox(
              height: 20,
            ),
            AnnouncementsCard(
              title: 'Thank You',
              content:
                  'Thanks for being a part of io19! Keep the conversation going and remember to rate sessions you were able to attend. We would love to hear your feedback on the event as a whole:',
            ),
            SizedBox(
              height: 15,
            ),
            AnnouncementsCard(
              title: 'I/O Codelabs',
              content:
                  'Thanks for being a part of io19! Keep the conversation going and remember to rate sessions you were able to attend. We would love to hear your feedback on the event as a whole:',
            ),
            SizedBox(
              height: 15,
            ),
            AnnouncementsCard(
              title: 'I/O Arts',
              content:
                  'Thanks for being a part of io19! Keep the conversation going and remember to rate sessions you were able to attend. We would love to hear your feedback on the event as a whole:',
            ),
            SizedBox(
              height: 15,
            ),
            AnnouncementsCard(
              title: 'Community Guidelines',
              content:
                  'Thanks for being a part of io19! Keep the conversation going and remember to rate sessions you were able to attend. We would love to hear your feedback on the event as a whole:',
            ),
            SizedBox(
              height: 15,
            ),
            AnnouncementsCard(
              title: 'Diversity at I/O',
              content:
                  'Thanks for being a part of io19! Keep the conversation going and remember to rate sessions you were able to attend. We would love to hear your feedback on the event as a whole:',
            ),
          ],
        ),
      ),
    );
  }
}

class ScheduleCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      children: <Widget>[
        ScheduleCard(
          eventTime: '10:00 AM',
          eventTitle: 'Google Keynote',
          eventLocation: 'Ampitheatre',
        ),
        ScheduleCard(
          eventTime: '10:00 AM',
          eventTitle: 'Google Keynote',
          eventLocation: 'Ampitheatre',
        ),
        ScheduleCard(
          eventTime: '10:00 AM',
          eventTitle: 'Google Keynote',
          eventLocation: 'Ampitheatre',
        ),
        ScheduleCard(
          eventTime: '10:00 AM',
          eventTitle: 'Google Keynote',
          eventLocation: 'Ampitheatre',
        ),
        TextButton(
          child: Text('View all events'),
          style: TextButton.styleFrom(
            onSurface: Colors.blue,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'Schedule');
          },
        )
      ],
    );
  }
}
