import 'package:flutter/material.dart';
import 'package:io_flutter/schedule/schedule_details.dart';

import '../models/sessions.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  Future<String> _fetchSessionData() async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/json/sessions.json');
  }

  @override
  void initState() {
    super.initState();
    _fetchSessionData();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // leading: Switch.adaptive(
          //   value: false,
          //   onChanged: (favoured) {},
          //   activeColor: Theme.of(context).colorScheme.secondary,
          // ),
          title: const Text('Schedule'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
              color: Colors.blue.shade800,
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Day 1'),
              Tab(text: 'Day 2'),
            ],
          ),
        ),
        body: FutureBuilder(
          future: _fetchSessionData(),
          initialData: null,
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
            final session = sessionFromJson(snapshot.data.toString());

            final day1Sessions =
                session.where((element) => element.day == Day.DAY_1).toList();
            final day2Sessions =
                session.where((element) => element.day == Day.DAY_2).toList();

            return TabBarView(
              children: [
                ListView.builder(
                  itemCount: day1Sessions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        day1Sessions[index].title,
                        softWrap: true,
                      ),
                      subtitle: Text(day1Sessions[index].time),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star_border,
                            color: Theme.of(context).primaryColorLight,
                          )),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ScheduleDetailsPage(
                                    sessionImage: day1Sessions[index].image,
                                    sessionTitle: day1Sessions[index].title,
                                  ))),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: day2Sessions.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(day2Sessions[index].title),
                      subtitle: Text(day1Sessions[index].time.trim()),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star_border,
                            color: Theme.of(context).primaryColorLight,
                          )),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ScheduleDetailsPage(
                                    sessionImage: day2Sessions[index].image,
                                    sessionTitle: day2Sessions[index].title,
                                  ))),
                    );
                  },
                ),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.filter_list),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
