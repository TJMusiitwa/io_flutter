import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final AssetImage eventAsset;
  final String cardTitle, cardContent;

  const EventCard(
      {Key? key,
      required this.eventAsset,
      required this.cardTitle,
      required this.cardContent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
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
              child: Image(
                image: eventAsset,
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
                        cardTitle,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        cardContent,
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
    );
  }
}
