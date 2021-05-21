import 'package:flutter/material.dart';

class AnnouncementsCard extends StatelessWidget {
  final String title, content;

  const AnnouncementsCard(
      {Key? key, required this.title, required this.content})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(6),
      ),
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(content, softWrap: true, textAlign: TextAlign.left)
          ],
        ),
      ),
    );
  }
}
