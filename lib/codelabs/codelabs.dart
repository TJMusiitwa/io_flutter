import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:io_flutter/models/codelabs.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../io_drawer.dart';

class CodelabsScreen extends StatelessWidget {
  late List codelabdata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Codelabs'),
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
      body: ListView(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          children: <Widget>[
            AboutCodelabsContainer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButton.icon(
                  icon: Icon(Icons.location_on),
                  label: Text('Codelabs building'),
                  onPressed: () {},
                ),
                TextButton.icon(
                  icon: Icon(Icons.open_in_new),
                  label: Text('Codelabs website'),
                  onPressed: () {
                    launch('https://codelabs.developers.google.com/');
                  },
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/codelabs.json'),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  var codelabs = json.decode(snapshot.data.toString());
                  return ListView.builder(
                    itemCount: codelabs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ExpansionTile(
                        title: Text(codelabs[index]['codelabTitle']),
                        children: <Widget>[
                          TextButton.icon(
                            icon: Icon(Icons.open_in_new),
                            label: Text('Start codelab'),
                            onPressed: () {
                              launch(codelabs[index]["codelabLink"]);
                            },
                          )
                        ],
                      );
                    },
                  );
                }),
          ]),
    );
  }
}

// class CodelabsList extends StatelessWidget {
//   final List<Codelab> codelab;

//   const CodelabsList({Key? key, required this.codelab}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: codelab.length,
//       itemBuilder: (BuildContext context, int index) {
//         return Expanded(
//           child: ExpansionTile(
//             title: Text(codelab[index].title),
//             children: <Widget>[
//               Text(codelab[index].duration),
//               Text(
//                 codelab[index].description,
//                 softWrap: true,
//               ),
//               TextButton.icon(
//                 icon: Icon(Icons.open_in_new),
//                 label: Text('Start codelab'),
//                 onPressed: () {},
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// List<Codelab> parseJson(String response) {
//   if (response == null) {
//     return [];
//   }
//   final parsed = json.decode(response.toString()).cast<Map<String, dynamic>>();
//   return parsed.map<Codelab>((json) => Codelab.fromJson(json)).toList();
// }

class AboutCodelabsContainer extends StatefulWidget {
  bool notVisible = true;
  @override
  _AboutCodelabsContainerState createState() => _AboutCodelabsContainerState();
}

class _AboutCodelabsContainerState extends State<AboutCodelabsContainer> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.notVisible,
      child: Container(
        //color: Colors.lightBlue,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Learn about the latest and greatest Google technologies via self-paced tutorials in our ready-to-code kisosks, or bring your own machine and take your woek home with you. Kiosks are open daily except during the first Keynote.',
              softWrap: true,
              textWidthBasis: TextWidthBasis.parent,
              style: TextStyle(height: 1.25),
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                TextButton(
                  child: Text('Got it'),
                  onPressed: () {
                    setState(() {
                      widget.notVisible = false;
                    });
                  },
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(7)),
      ),
    );
  }
}
