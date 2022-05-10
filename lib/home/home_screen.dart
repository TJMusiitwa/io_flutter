import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:io_flutter/home/schedule_card.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  int timeToIO = DateTime(2022, 5, 11, 18, 00).millisecondsSinceEpoch;
  Stream<int> timerStream =
      Stream.periodic(Duration(seconds: 1), (i) => i).asBroadcastStream();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person_rounded,
              color: Colors.blue.shade800,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          StreamBuilder(
              stream: timerStream,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                //DateFormat format = DateFormat(hh:mm:ss);
                int now = DateTime.now().millisecondsSinceEpoch;
                Duration remaining = Duration(milliseconds: timeToIO - now);
                var dateString =
                    '${remaining.inHours}:${remaining.inMinutes % 60}:${remaining.inSeconds % 60}';

                return RichText(
                    text: TextSpan(
                        text: '${remaining.inDays}D:',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.blue),
                        children: [
                          TextSpan(
                              text: '${remaining.inHours}H:',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: Colors.amber),
                              children: [
                                TextSpan(
                                    text: '${remaining.inMinutes % 60}m:',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(color: Colors.red),
                                    children: [
                                      TextSpan(
                                        text: '${remaining.inSeconds % 60}s',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(color: Colors.green),
                                      )
                                    ])
                              ])
                        ]),
                    textAlign: TextAlign.center);
              }),
          const SizedBox(height: 10),
          Text('Time to I/O',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption),
          const SizedBox(height: 20),
          HomeMainWidget(
            widgetTitle: 'Watch the Keynote',
            widgetImage:
                'https://io.google/2022/data/phase3/8e80903f-955f-4a5b-9118-b0ce4acdb0e6.webp',
            onTap: () => launchUrl(Uri.parse('https://youtu.be/nP-nMZpLM1A')),
          ),
          const SizedBox(height: 20),
          HomeMainWidget(
            widgetTitle: 'Watch the Developer Keynote',
            widgetImage:
                'https://io.google/2022/data/phase3/0209f281-0b0e-4339-9e7a-a501e36f03c7.webp',
            onTap: () => launchUrl(
                Uri.parse('https://www.youtube.com/watch?v=qBkyU1TJKDg')),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
              title: Text('Your Saved Sessions'),
              trailing: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}

class HomeMainWidget extends StatelessWidget {
  const HomeMainWidget({
    Key? key,
    required this.widgetTitle,
    required this.widgetImage,
    this.onTap,
  }) : super(key: key);

  final String widgetTitle;
  final String widgetImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: double.maxFinite,
          height: 250,
          child: GridTile(
            footer: GridTileBar(
                backgroundColor: Colors.black.withOpacity(0.9),
                title: Text(widgetTitle)),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: widgetImage,
                fit: BoxFit.cover,
                placeholder: (_, __) => Image.asset(
                  'assets/img/light.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
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
