import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
              Tab(text: 'May 18'),
              Tab(text: 'May 19'),
              Tab(text: 'May 20'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('18')),
            Center(child: Text('19')),
            Center(child: Text('20')),
          ],
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
