import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> with SingleTickerProviderStateMixin {
  final tabIndicatorColors = [
    Colors.amber,
    Colors.red,
    Colors.grey,
    Colors.green,
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
        bottom: TabBar(
          controller: _tabController,
          //indicatorColor: tabIndicatorColors[_tabController.index],
          tabs: const [
            Tab(text: 'General'),
            Tab(text: 'Registration'),
            Tab(text: 'Developer Profile'),
            Tab(text: 'Community'),
          ],
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: tabIndicatorColors[_tabController.index],
              ),
            ),
          ),
          isScrollable: true,
          onTap: (index) => tabIndicatorColors[index],
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        Center(child: Text('General')),
        Center(child: Text('Registration')),
        Center(child: Text('Developer Profile')),
        Center(child: Text('Community')),
      ]),
    );
  }
}
