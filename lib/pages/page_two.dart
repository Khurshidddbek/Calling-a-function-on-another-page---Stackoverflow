import 'package:flutter/material.dart';
import 'package:move_function_from_page_to_page_stackoverflow/pages/page_one.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  String value2 = 'empty';

  Future timeHere() async {
    PageOneState pageOneState = PageOneState();

    value2 = await pageOneState.fetchDd();
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
            Text(value2),
            TextButton(
                onPressed: () {
                  timeHere();
                },
                child: const Text('Get value')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Page Two'))
          ],
        ),
      ),
    );
  }
}
