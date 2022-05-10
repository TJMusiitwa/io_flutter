import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:io_flutter/models/content.dart';
import 'package:share_plus/share_plus.dart';

class ScheduleDetailsPage extends StatefulWidget {
  const ScheduleDetailsPage(
      {Key? key, required this.sessionImage, required this.sessionTitle})
      : super(key: key);

  final String sessionImage;
  final String sessionTitle;

  @override
  State<ScheduleDetailsPage> createState() => _ScheduleDetailsPageState();
}

class _ScheduleDetailsPageState extends State<ScheduleDetailsPage> {
  Future<String> _fetchScheduleDetails() async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/json/program_content.json');
  }

  @override
  void initState() {
    super.initState();
    _fetchScheduleDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 200,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: CachedNetworkImage(
                  imageUrl: widget.sessionImage,
                  fit: BoxFit.cover,
                  placeholder: (context, _) =>
                      Image.asset('assets/img/light.png'),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star_border,
                    )),
                IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {
                      Share.share(
                          'Check out this Google I/O session: ${widget.sessionTitle}');
                    })
              ]),
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: FutureBuilder(
                future: _fetchScheduleDetails(),
                initialData: null,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  final content = contentFromJson(snapshot.data.toString())
                      .where((data) => data.talk == widget.sessionTitle)
                      .single;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.sessionTitle,
                        //overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        content.overview,
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      Chip(
                          label: Text(content.talkLevel),
                          backgroundColor: Theme.of(context).primaryColorLight),
                      const SizedBox(height: 20),
                      Text(
                        'Tag(s):',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 10),
                      content.talkCategories.trim() == '[]'
                          ? const SizedBox.shrink()
                          : Wrap(
                              runSpacing: 6,
                              spacing: 6,
                              children: List<Widget>.generate(
                                content.talkCategories.trim().split(',').length,
                                ((index) => Chip(
                                      label: Text(content.talkCategories
                                          .trim()
                                          .split(',')[index]),
                                      backgroundColor: Colors.yellow,
                                    )),
                              ),
                            ),
                      const SizedBox(height: 20),
                      Text(
                        'Speaker(s):',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 10),
                      content.speakerName.trim() == '[]'
                          ? const SizedBox.shrink()
                          : Wrap(
                              runSpacing: 6,
                              spacing: 6,
                              children: List<Widget>.generate(
                                content.speakerName.trim().split(',').length,
                                ((index) => Transform.scale(
                                      scale: 1,
                                      child: Chip(
                                        avatar: CircleAvatar(
                                          radius: 50,
                                          backgroundImage:
                                              CachedNetworkImageProvider(
                                                  'https://io.google${content.speakerImage.trim().split(',')[index].trim()}'),
                                        ),
                                        label: Text(content.speakerName
                                            .trim()
                                            .split(',')[index]),
                                      ),
                                    )),
                              ),
                            ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
