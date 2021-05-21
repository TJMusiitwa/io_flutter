import 'package:flutter/material.dart';

class TravelTab extends StatefulWidget {
  @override
  _TravelTabState createState() => _TravelTabState();
}

class _TravelTabState extends State<TravelTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(
          title: Text('What to bring for the event'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Hotels'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Getting to Mountain View'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Getting to Shoreline Ampitheatre'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Shuttle service'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Off-site parking'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Public transportation'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Biking'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Ridesharing'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Airport Transfers'),
          children: <Widget>[Text('What is happening?')],
        ),
      ],
    );
  }
}
