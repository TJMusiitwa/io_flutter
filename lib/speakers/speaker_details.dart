import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:io_flutter/models/speakers.dart';

class SpeakerDetails extends StatelessWidget {
  const SpeakerDetails({Key? key, required this.speaker}) : super(key: key);
  final Speaker speaker;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(speaker.name),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Column(
                children: [
                  Hero(
                    tag: speaker.name,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage:
                          CachedNetworkImageProvider(speaker.image),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(speaker.pronouns!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 14)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Role: ${speaker.role}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 20),
            Text(
              speaker.description,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Text(
              'Google I/O Talk',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            Divider(),
            ListTile(
              title: Text(
                speaker.talk,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              onTap: () {},
            ),
            Divider()
          ]),
        ));
  }
}
