import 'package:flutter/material.dart';
import 'package:nft_app/bottombar.dart';
import 'package:nft_app/mainpage.dart';
import 'package:nft_app/statepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  List<Widget> screens = [MainPage(), StatePage()];
  int currentpage = 0;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff211134),
      appBar: currentpage == 0
          ? AppBar(
              title: Text(
                "NFT Marketplace",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              backgroundColor: Color(0xff211134),
            )
          : AppBar(
              title: Text(
                "Stats",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              backgroundColor: Color(0xff211134),
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: Color(0xff8E51FF),
                indicatorWeight: 5.0,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.stacked_bar_chart),
                        SizedBox(width: 8),
                        Text("Ranking"),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.stacked_line_chart),
                        SizedBox(width: 8),
                        Text("Activity"),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Icon(Icons.more_horiz_outlined, color: Colors.white),
                  ),
                ),
              ],
              actionsPadding: EdgeInsets.only(right: 10, bottom: 5),
            ),
      body: screens[currentpage],
      extendBody: true,
      bottomNavigationBar: Bottombar(
        ontaphome: () {
          setState(() {
            currentpage = 0;
          });
        },
        ontapstats: () {
          setState(() {
            currentpage = 1;
          });
        },
      ),
    );
  }
}
