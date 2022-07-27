import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => PageOneState();
}

class PageOneState extends State<PageOne> {
  String value1 = 'empty';

  Future<String> fetchDd() async {
    await Future.delayed(const Duration(seconds: 1));
    value1 = 'Future String';

    return 'fromPageOne';
  }

  Future getValue() async {
    await fetchDd();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value1),
            TextButton(
                onPressed: () {
                  getValue();
                },
                child: const Text('Get value')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('page_two');
                },
                child: const Text('Page Two')),
          ],
        ),
      ),
    );
  }
}
