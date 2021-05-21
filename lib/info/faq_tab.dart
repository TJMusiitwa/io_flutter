import 'package:flutter/material.dart';

class FAQTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(
          title: Text('When and where is Google I/O 2019?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text(
            'How can I stay informed on the latest from Google I/O?',
            softWrap: true,
          ),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Will all the sessions be in English?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Can I reserve Sessions ahead of the event?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title:
              Text('What is the best way to get to the Shoreline Ampitheater?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('When and where can I pick up my badge?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('I really want a fron row seat at the Keynote. Tips?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('What should I wear?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('I like to snack. What are my onsite food options?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('If I lose something onsite, where can I find it?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('The After dark programs sound like fun. Should I go?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('Can you accomodate my onsite accessibility needs?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text(
              'How do you support expectant mothers and parents attending I/O?'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text(
              'Google Event Community Guidelines and Anti-Harrasment Policy'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text(
              'Will the event be livestreamed? What if I cant follow  the event in realtime'),
          children: <Widget>[Text('What is happening?')],
        ),
        ExpansionTile(
          title: Text('I want to celebrate I/O with my community! Any ideas?'),
          children: <Widget>[Text('What is happening?')],
        ),
      ],
    );
  }
}
