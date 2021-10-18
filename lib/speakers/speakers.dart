import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:io_flutter/models/speakers.dart';
import 'package:side_header_list_view/side_header_list_view.dart';

class SpeakersScreen extends StatefulWidget {
  const SpeakersScreen({Key? key}) : super(key: key);

  @override
  _SpeakersState createState() => _SpeakersState();
}

class _SpeakersState extends State<SpeakersScreen> {
  @override
  void initState() {
    super.initState();
    _fetchSpeakersData();
  }

  Future<String> _fetchSpeakersData() async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/json/speakers.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speakers'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Colors.blue.shade800,
          ),
        ],
      ),
      body: FutureBuilder(
        future: _fetchSpeakersData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting &&
              snapshot.data != null) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            ScaffoldMessenger(
              child: SnackBar(content: Text(snapshot.error.toString())),
            );
            debugPrint(snapshot.error.toString());
          }

          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          }

          final speakers = speakersFromJson(snapshot.data.toString());
          return SideHeaderListView(
            itemCount: speakers.length,
            itemExtend: 80.0,
            padding: const EdgeInsets.all(10),
            headerBuilder: (context, index) {
              return SizedBox(
                  width: 30,
                  child: Text(
                    speakers[index].speakerName[0].substring(0, 1),
                    style: Theme.of(context).textTheme.headline5,
                  ));
            },
            itemBuilder: (context, index) {
              var speaker = speakers[index];
              return ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: CachedNetworkImageProvider(
                      speaker.speakerImage ??
                          'https://www.seekpng.com/png/full/966-9665317_placeholder-image-person-jpg.png',
                      scale: 1.0
                      //useOldImageOnUrlChange: true,
                      ),
                ),
                title: Text(speaker.speakerName),
              );
            },
            hasSameHeader: (int a, int b) {
              return speakers[a].speakerName[0].substring(0, 1) ==
                  speakers[b].speakerName[0].substring(0, 1);
            },
          );
        },
      ),
    );
  }
}
