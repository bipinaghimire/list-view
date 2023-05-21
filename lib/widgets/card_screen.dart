import 'package:flutter/material.dart';

Widget displayCard(BuildContext context, String title) {
  return GestureDetector(
    onDoubleTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Clicked'),
        ),
      );
    },
    child: SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    ),
  );
}
