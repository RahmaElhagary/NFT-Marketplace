import 'dart:ui';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key,required this.ontaphome,required this.ontapstats});

  final VoidCallback ontaphome;
  final VoidCallback ontapstats;

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      InkWell(
                        onTap: widget.ontaphome,
                        child: Icon(Icons.home, size: 30, color: Colors.white),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: widget.ontapstats,
                        child: Icon(
                          Icons.bar_chart,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Container(),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.person_2_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: -25,
              child: Container(
                width: 80,
                height: 60,
                decoration: ShapeDecoration(
                  color: Colors.white.withValues(alpha: 0.5),
                  shape: StarBorder.polygon(
                    sides: 6,
                    side: BorderSide(color: Colors.white, width: 2),
                    pointRounding: 0.4,
                  ),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Icon(Icons.add, size: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
