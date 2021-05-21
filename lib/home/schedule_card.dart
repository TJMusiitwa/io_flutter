import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String eventTime, eventTitle, eventLocation;

  const ScheduleCard(
      {Key? key,
      required this.eventTime,
      required this.eventTitle,
      required this.eventLocation})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(eventTime),
              Icon(Icons.star, color: Colors.blue)
            ],
          ),
          Text(
            eventTitle,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(eventLocation, style: Theme.of(context).textTheme.subtitle2)
        ],
      ),
    );
  }
}
