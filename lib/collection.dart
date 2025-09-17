import 'dart:ui';
import 'package:flutter/material.dart';

class CollectionCard extends StatefulWidget {
  final String text;
  final String number;
  final String image;
  const CollectionCard({super.key,required this.image,required this.number,required this.text});

  @override
  State<CollectionCard> createState() => _CollectionCardState();
}

class _CollectionCardState extends State<CollectionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.2),
                width: 0.8,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(widget.image,fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(widget.text, style: TextStyle(color: Colors.white)),
                          Spacer(),
                          Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          Text(
                            widget.number,
                            style: TextStyle(color: Color(0xffD6D3D1)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

