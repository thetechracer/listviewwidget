import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key, required this.boy});
  final String boy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 7.0),
      child: Container(
        // height: 200,
        width: 100,

        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: Center(
          child: Text(
            boy,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
