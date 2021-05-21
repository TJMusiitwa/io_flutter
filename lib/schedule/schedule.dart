import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:side_header_list_view/side_header_list_view.dart';

import '../io_drawer.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
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
      body: new SideHeaderListView(
        itemCount: names.length,
        padding: new EdgeInsets.all(16.0),
        itemExtend: 48.0,
        headerBuilder: (BuildContext context, int index) {
          return new SizedBox(
              width: 32.0,
              child: new Text(
                names[index].substring(0, 1),
                style: Theme.of(context).textTheme.headline5,
              ));
        },
        itemBuilder: (BuildContext context, int index) {
          return new Text(
            names[index],
            style: Theme.of(context).textTheme.headline5,
          );
        },
        hasSameHeader: (int a, int b) {
          return names[a].substring(0, 1) == names[b].substring(0, 1);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_list),
        onPressed: () {},
      ),
    );
  }
}

const names = const <String>[
  'Annie',
  'Arianne',
  'Bertie',
  'Bettina',
  'Bradly',
  'Caridad',
  'Carline',
  'Cassie',
  'Chloe',
  'Christin',
  'Clotilde',
  'Dahlia',
  'Dana',
  'Dane',
  'Darline',
  'Deena',
  'Delphia',
  'Donny',
  'Echo',
  'Else',
  'Ernesto',
  'Fidel',
  'Gayla',
  'Grayce',
  'Henriette',
  'Hermila',
  'Hugo',
  'Irina',
  'Ivette',
  'Jeremiah',
  'Jerica',
  'Joan',
  'Johnna',
  'Jonah',
  'Joseph',
  'Junie',
  'Linwood',
  'Lore',
  'Louis',
  'Merry',
  'Minna',
  'Mitsue',
  'Napoleon',
  'Paris',
  'Ryan',
  'Salina',
  'Shantae',
  'Sonia',
  'Taisha',
  'Zula',
];
