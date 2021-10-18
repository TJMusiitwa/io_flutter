import 'package:flutter/material.dart';
import 'package:io_flutter/models/faqs.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQState();
}

class _FAQState extends State<FAQPage> {
  Future<String> _fetchFAQData() async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/json/faq.json');
  }

  @override
  void initState() {
    super.initState();
    _fetchFAQData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
      ),
      body: FutureBuilder(
        future: _fetchFAQData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final faqs = faQsFromJson(snapshot.data.toString());
          return ListView.builder(
            itemCount: faqs.length,
            itemBuilder: (BuildContext context, int index) {
              var faq = faqs[index];
              return ExpansionTile(
                title: Text(faq.header),
                children: [
                  Text(
                    faq.content,
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  )
                ],
                textColor: Colors.blue[800],
                tilePadding: const EdgeInsets.only(left: 10, right: 10),
                childrenPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              );
            },
          );
        },
      ),
    );
  }
}
