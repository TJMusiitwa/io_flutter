import 'package:flutter/material.dart';
import 'package:io_flutter/models/codelabs.dart';
import 'package:url_launcher/url_launcher.dart';

class CodelabsScreen extends StatefulWidget {
  const CodelabsScreen({Key? key}) : super(key: key);

  @override
  _CodelabsScreenState createState() => _CodelabsScreenState();
}

class _CodelabsScreenState extends State<CodelabsScreen> {
  bool showBanner = true;
  late final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Lab'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Colors.blue.shade800,
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showBanner)
              MaterialBanner(
                  content: Text(
                    'Learn about the latest and greatest Google technologies via self-paced tutorials in our ready-to-code codelabs.',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.justify,
                  ),
                  backgroundColor: Colors.blue.shade100,
                  //leading: Icon(Icons.code),
                  actions: [
                    TextButton(
                        onPressed: () => _toggleBanner(),
                        child: const Text('DISMISS'))
                  ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Workshops',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  TextButton(
                      onPressed: () => _toggleBanner(),
                      child: const Text('See All'))
                ],
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                maxHeight: 200,
              ),
              child: Container(
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                'Codelabs',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            FutureBuilder(
              future: _fetchCodelabsData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting &&
                    snapshot.data != null) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  debugPrint(snapshot.error.toString());
                }

                if (snapshot.data == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                final codelabs = codelabsFromJson(snapshot.data.toString());

                return snapshot.hasData
                    ? ListView.separated(
                        shrinkWrap: true,
                        controller: scrollController,
                        itemCount: codelabs.length,
                        itemBuilder: (context, index) {
                          var codelabItem = codelabs[index];
                          return ListTile(
                              title: Text(codelabItem.codelabTitle),
                              visualDensity:
                                  VisualDensity.adaptivePlatformDensity,
                              onTap: () =>
                                  launchUrl(Uri.parse(codelabItem.codelabLink)),
                              subtitle: Text(
                                  '${codelabItem.tag0.toString()}, ${codelabItem.tag1.toString()}'));
                        },
                        separatorBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            color: Theme.of(context).dividerColor,
                            height: 0.5,
                          ),
                        ),
                      )
                    : Center(
                        child: Text(
                          'There are no codelabs to show',
                          softWrap: true,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 25),
                        ),
                      );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.filter_list),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _fetchCodelabsData();
    scrollController = ScrollController();
  }

  Future<String> _fetchCodelabsData() async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/json/codelabs.json');
  }

  void _toggleBanner() {
    setState(() {
      showBanner = !showBanner;
    });
  }
}
