import 'package:flutter/material.dart';
import 'package:listview_batch30/widgets/card_screen.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            displayCard(context, "Hello world 1"),
            displayCard(context, "Hello world 2"),
          ],
        ),
      ),
    );
  }
}
