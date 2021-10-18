import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AgendaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda'),
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
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 28, bottom: 20),
            child: Center(
              child: Text(
                'The day before',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            child: ListTile(
              leading: Icon(
                Icons.security,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Badge pick-up'),
              subtitle: Text('7:00 am - 7:00 pm'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Center(
              child: Text(
                'Day 1',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            child: ListTile(
              leading: Icon(
                Icons.security,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Badge pick-up'),
              subtitle: Text('7:00 am - 7:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.pink.shade100,
            child: ListTile(
              leading: Icon(
                Icons.restaurant,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Breakfast'),
              subtitle: Text('7:00 am - 9:30 am'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.orange.shade300,
            child: ListTile(
              leading: Icon(
                Icons.star,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Google Keynote'),
              subtitle: Text('10:00 am - 11:30 am'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red), color: Colors.white),
            child: ListTile(
              leading: Icon(
                Icons.store,
                size: 30,
                color: Colors.black,
              ),
              title: Text('I/O Store'),
              subtitle: Text('11:30 am - 7:30 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.pink.shade100,
            child: ListTile(
              leading: Icon(
                Icons.restaurant,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Lunch'),
              subtitle: Text('11:30 am - 12:45 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.orange.shade300,
            child: ListTile(
              leading: Icon(
                Icons.star,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Developer Keynote'),
              subtitle: Text('12:45 pm - 2:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.green,
            child: ListTile(
              leading: Icon(
                MdiIcons.slashForward,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Sessions'),
              subtitle: Text('2:00 pm - 7:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.code,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Codelabs'),
              subtitle: Text('2:00 pm - 7:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.people,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Office Hours & App Reviews'),
              subtitle: Text('2:00 pm - 7:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                MdiIcons.tools,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Sandboxes'),
              subtitle: Text('2:00 pm - 7:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue.shade800,
            child: ListTile(
              leading: Icon(
                MdiIcons.moonWaxingCrescent,
                size: 30,
                color: Colors.white,
              ),
              title: Text('After Dark'),
              subtitle: Text('6:30 pm - 10:00 pm'),
            ),
          ),
          //DAY 2 List
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Center(
              child: Text(
                'Day 2',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            child: ListTile(
              leading: Icon(
                Icons.security,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Badge pick-up'),
              subtitle: Text('8:00 am - 7:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.pink.shade100,
            child: ListTile(
              leading: Icon(
                Icons.restaurant,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Breakfast'),
              subtitle: Text('8:00 am - 10:00 am'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red), color: Colors.white),
            child: ListTile(
              leading: Icon(
                Icons.store,
                size: 30,
                color: Colors.black,
              ),
              title: Text('I/O Store'),
              subtitle: Text('8:00 am - 8:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.pink.shade100,
            child: ListTile(
              leading: Icon(
                Icons.restaurant,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Lunch'),
              subtitle: Text('11:30 am - 2:30 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.green,
            child: ListTile(
              leading: Icon(
                MdiIcons.slashForward,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Sessions'),
              subtitle: Text('8:30 am - 7:30 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.code,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Codelabs'),
              subtitle: Text('8:30 am - 7:15 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.people,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Office Hours & App Reviews'),
              subtitle: Text('8:30 am - 7:30 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                MdiIcons.tools,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Sandboxes'),
              subtitle: Text('8:30 am - 7:15 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue.shade800,
            child: ListTile(
              leading: Icon(
                MdiIcons.musicNote,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Concert'),
              subtitle: Text('7:45 pm - 10:00 pm'),
            ),
          ),

          //DAY 3
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Center(
              child: Text(
                'Day 3',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            child: ListTile(
              leading: Icon(
                Icons.security,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Badge pick-up'),
              subtitle: Text('8:00 am - 4:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.pink.shade100,
            child: ListTile(
              leading: Icon(
                Icons.restaurant,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Breakfast'),
              subtitle: Text('8:00 am - 10:00 am'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red), color: Colors.white),
            child: ListTile(
              leading: Icon(
                Icons.store,
                size: 30,
                color: Colors.black,
              ),
              title: Text('I/O Store'),
              subtitle: Text('8:00 am - 5:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.pink.shade100,
            child: ListTile(
              leading: Icon(
                Icons.restaurant,
                size: 30,
                color: Colors.black,
              ),
              title: Text('Lunch'),
              subtitle: Text('11:30 am - 2:30 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.green,
            child: ListTile(
              leading: Icon(
                MdiIcons.slashForward,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Sessions'),
              subtitle: Text('8:30 am - 4:30 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.code,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Codelabs'),
              subtitle: Text('8:30 am - 4:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.people,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Office Hours & App Reviews'),
              subtitle: Text('8:30 am - 4:00 pm'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                MdiIcons.tools,
                size: 30,
                color: Colors.white,
              ),
              title: Text('Sandboxes'),
              subtitle: Text('8:30 am - 4:00 pm'),
            ),
          ),
        ],
      ),
    );
  }
}
