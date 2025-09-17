import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_app/homepage.dart';

class Ooboardpage extends StatefulWidget {
  const Ooboardpage({super.key});

  @override
  State<Ooboardpage> createState() => _OoboardpageState();
}

class _OoboardpageState extends State<Ooboardpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.64, -0.76),
            end: Alignment(-0.64, 0.76),
            colors: [Color(0xff5C609B), Color(0xff767CB2)],
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset("assets/image.png", fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                right: 55,
                left: 50,
                bottom: 50,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: const Text(
                  "Welcome to\nNFT Marketplace",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.1),
                      ),
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "Explore and Mint NFTs",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19.8,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "You can buy and sell the NFTs of the best",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              "artists in the world.",
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 25,
                                bottom: 5,
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => Homepage(),
                                    ),
                                  );
                                },
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                    const Color(0xff5C609B),
                                  ),
                                ),
                                child: const Text(
                                  "Get started now",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
