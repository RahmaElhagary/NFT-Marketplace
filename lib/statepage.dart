import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_app/dropbottons.dart';
import 'package:nft_app/item.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xff211134),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  DropDownBotton(text: "All categories",type: Icons.apps,),
                  Spacer(),
                  DropDownBotton(text: "All Chains",type: Icons.link,),
                ],
              ),
              const SizedBox(height: 30,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withValues(alpha: 0.1),
                      border: Border.all(color: Color(0xffD6D3D1))
                    ),
                    child: Column(
                      children: [
                        Item(number: "1",text: "Azumi",image: "assets/item1.jpg",precentage: "3,99%",price: "200055.02",),
                        Item(number: "2",text: "Hape prime",image: "assets/item2.jpg",precentage: "33,79%",price: "180055.45",),
                        Item(number: "3",text: "Cryoto",image: "assets/item3.jpg",precentage: "-6,56%",price: "90055.62",),
                        Item(number: "4",text: "Ape Club",image: "assets/item4.jpg",precentage: "3,99%",price: "88055.12",),
                        Item(number: "5",text: "Bat",image: "assets/item5.jpg",precentage: "3,99%",price: "10055.06",),
                        Item(number: "6",text: "Mutant",image: "assets/item6.jpg",precentage: "3,99%",price: "9095.27",),
                        Item(number: "7",text: "Metaverse",image: "assets/item7.jpg",precentage: "3,99%",price: "10055.02",),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.12,),
            ],
          ),
        ),
      ),
    );
  }
}