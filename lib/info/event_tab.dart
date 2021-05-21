import 'package:flutter/material.dart';
import 'package:io_flutter/info/event_card.dart';

class EventTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      children: <Widget>[
        new WiFiCard(),
        SizedBox(
          height: 18,
        ),
        Text('EVENT TYPES'),
        SizedBox(
          height: 18,
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: Image.asset(
                    'assets/img/event_card.png',
                    scale: 0.5,
                    fit: BoxFit.cover,
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Sessions',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Starting in April, in-person attendees can reserve seats for Sessions in advance of the event on the I/O website and also via the I/O mobile app (note: a portion of Session seats will be exempt from reservations and available first-come, first-served onsite). Attendance at Codelabs, App Reviews and Office Hours is on a first-come, first-served basis onsite.',
                            softWrap: true,
                            textAlign: TextAlign.justify,
                          )
                        ],
                      )),
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        EventCard(
          eventAsset: AssetImage('assets/img/event_card2.png'),
          cardTitle: 'Sandbox',
          cardContent:
              'Dedicated spaces to explore, learn and play with our latest products and platforms via interactive demos, physical installations, and more.',
        ),
        SizedBox(
          height: 10,
        ),
        EventCard(
          eventAsset: AssetImage('assets/img/event_card2.png'),
          cardTitle: 'Codelabs',
          cardContent:
              'Get your hands-on experience in our ready-to-code kisosks. Here, you will have everything you nedd to learn about the latest and greatest Google technologies via self-paced tutorials, or bring your own machine and take your work home with you. Google staff will be on hand for helpful advice and to provide direction if you get stuck.',
        ),
        SizedBox(
          height: 10,
        ),
        EventCard(
          eventAsset: AssetImage('assets/img/event_card2.png'),
          cardTitle: 'Office Hours & App Reviews',
          cardContent:
              'Office Hours are your chance to meet one-on-one with Google experts to ask all your technical questions, and App Reviews will give you the opportunity to receive advice and tips on your specific app-related projects.',
        ),
        SizedBox(
          height: 10,
        ),
        EventCard(
          eventAsset: AssetImage('assets/img/event_card2.png'),
          cardTitle: 'After Hours',
          cardContent:
              'After Sessions end for the day, stick around Shoreline for two evenings of food, drinks and fun. On the first night, the party will take over the Sandbox space and on the second night, we     will have an exclusive concert in the Ampitheatre.',
        ),
        SizedBox(
          height: 10,
        ),
        EventCard(
          eventAsset: AssetImage('assets/img/event_card2.png'),
          cardTitle: 'Meals',
          cardContent:
              'Attendees are offered complimentary breakfast, lunch, and snacks on all three days of the conference. Dinner will also be available on Day 1 and 2 during the After Hours events.',
        )
      ],
    );
  }
}

class WiFiCard extends StatefulWidget {
  final String networkSSD = '"io2019"';

  final String networkPassword = '"makegoodthings"';

  @override
  _WiFiCardState createState() => _WiFiCardState();
}

class _WiFiCardState extends State<WiFiCard> {
  bool invisible = true;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: invisible,
      child: Container(
        //color: Colors.lightBlue,
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'WIFI',
            ),
            SizedBox(height: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Network:',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(widget.networkSSD),
              ],
            ),
            SizedBox(height: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Password:',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(widget.networkPassword),
              ],
            ),
            TextButton(
              child: Text('Join network'),
              onPressed: () {
                setState(() {
                  invisible = false;
                });
              },
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(7)),
      ),
    );
  }
}
