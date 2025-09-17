import 'package:flutter/material.dart';
import 'package:nft_app/categoryimage.dart';
import 'package:nft_app/collection.dart';
import 'package:nft_app/heading.dart';
import 'package:nft_app/topseller.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                const Categoryimage(image: "assets/music.jpg", text: "Music"),
                const SizedBox(width: 10),
                const Categoryimage(image: "assets/art.jpg", text: "Art"),
                const SizedBox(width: 10),
                const Categoryimage(
                  image: "assets/virtual.jpg",
                  text: "Virtual words",
                ),
              ],
            ),
          ),
          const SideHeading(heading: "Trending collections"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                const CollectionCard(
                  image: "assets/im1.jpg",
                  text: "3D Art",
                  number: "200",
                ),
                const CollectionCard(
                  image: "assets/im2.jpg",
                  text: "Abstract Art",
                  number: "200",
                ),
                const CollectionCard(
                  image: "assets/im3.jpg",
                  text: "Portrait Art",
                  number: "200",
                ),
                const CollectionCard(
                  image: "assets/im4.jpg",
                  text: "Metaverse",
                  number: "200",
                ),
              ],
            ),
          ),
          const SideHeading(heading: "Top seller"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                const TopSeller(
                  image: "assets/one.jpg",
                  number: "0.018",
                  text: "Wave",
                  details: "wav2 #5672",
                  loves: "5160",
                ),
                const TopSeller(
                  image: "assets/two.jpg",
                  number: "0.906",
                  text: "Abstract Pink",
                  details: "abstract #2538",
                  loves: "1800",
                ),
                const TopSeller(
                  image: "assets/three.jpg",
                  number: "0.26",
                  text: "Wave",
                  details: "wavepi #5267",
                  loves: "2030",
                ),
                const TopSeller(
                  image: "assets/four.jpg",
                  number: "0.246",
                  text: "Abstract23",
                  details: "abstract #2038",
                  loves: "2060",
                ),
                const TopSeller(
                  image: "assets/five.jpg",
                  number: "0.46",
                  text: "Music",
                  details: "mali #7890",
                  loves: "200",
                ),
                const TopSeller(
                  image: "assets/six.jpg",
                  number: "0.03",
                  text: "Ball",
                  details: "baalli #4890",
                  loves: "200",
                ),
                const TopSeller(
                  image: "assets/seven.jpg",
                  number: "0.106",
                  text: "Ring",
                  details: "Ring #7288",
                  loves: "200",
                ),
                const TopSeller(
                  image: "assets/eight.jpg",
                  number: "0.26",
                  text: "Beer",
                  details: "Beer #1238",
                  loves: "200",
                ),
              ],
            ),
          ),
        ],
      );
  }
}