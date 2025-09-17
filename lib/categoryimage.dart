import 'package:flutter/material.dart';

class Categoryimage extends StatefulWidget {
  final String image;
  final String text;
  const Categoryimage({super.key,required this.image,required this.text});

  @override
  State<Categoryimage> createState() => _CategoryimageState();
}

class _CategoryimageState extends State<Categoryimage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: double.infinity,
            child: Image.asset(widget.image, fit: BoxFit.cover)
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: (MediaQuery.of(context).size.width * 0.6) * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black87,
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(widget.text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
          ),
        ),
      ],
    );
  }
}
