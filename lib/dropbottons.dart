import 'dart:ui';

import 'package:flutter/material.dart';

class DropDownBotton extends StatefulWidget {
  final String text;
  final IconData type;
  const DropDownBotton({super.key,required this.text,required this.type});

  @override
  State<DropDownBotton> createState() => _DropDownBottonState();
}

class _DropDownBottonState extends State<DropDownBotton> {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.42,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(widget.type,color: Color(0xffA6A09B)),
                SizedBox(width: 3,),
                Text(widget.text, style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
                SizedBox(width: 3,),
                InkWell(onTap : (){},child: Icon(Icons.arrow_downward, color: Color(0xffA6A09B), size: 17)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
