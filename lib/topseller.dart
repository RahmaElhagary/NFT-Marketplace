import 'dart:ui';
import 'package:flutter/material.dart';

class TopSeller extends StatefulWidget {
  final String text;
  final String details;
  final String number;
  final String image;
  final String loves;
  const TopSeller({
    super.key,
    required this.image,
    required this.number,
    required this.text,
    required this.details,
    required this.loves,
  });

  @override
  State<TopSeller> createState() => _TopSellerState();
}

class _TopSellerState extends State<TopSeller> {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(widget.image, fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(widget.text, style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
                      Text(
                        widget.details,
                        style: TextStyle(color: Color(0xffD6D3D1),fontSize: 10),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            widget.number,
                            style: TextStyle(color: Color(0xffD6D3D1)),
                          ),
                          Spacer(),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Color.fromARGB(215, 214, 211, 209),
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          Text(
                            widget.loves,
                            style: TextStyle(color: Color.fromARGB(215, 214, 211, 209)),
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
