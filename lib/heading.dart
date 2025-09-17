import 'package:flutter/material.dart';

class SideHeading extends StatefulWidget {
  final String heading;
  const SideHeading({super.key,required this.heading});

  @override
  State<SideHeading> createState() => _SideHeadingState();
}

class _SideHeadingState extends State<SideHeading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 10.0, bottom: 15.0),
      child: Text(
        widget.heading,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
