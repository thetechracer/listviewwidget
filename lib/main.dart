import 'package:flutter/material.dart';
import 'package:listviewwidget/posts.dart';

import 'squaretile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List _posts = [
    'post1',
    'post2',
    'post3',
    'post4',
    'post5',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 8.0, right: 8.0),
              child: Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                    return MyPost(
                      boy: _posts[index],
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return SquareTile(
                    child: _posts[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
