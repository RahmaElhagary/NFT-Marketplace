import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final String number;
  final String text;
  final String price;
  final String precentage;
  final String image;

  const Item({
    super.key,
    required this.number,
    required this.text,
    required this.price,
    required this.precentage,
    required this.image
  });

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          child: Row(
            children: [
              Text(
                widget.number,
                style: TextStyle(fontSize: 18, color: Color(0xffA6A09B)),
              ),
              const SizedBox(width: 5),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.width * 0.15,
                  child: Image.asset(widget.image, fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.text, style: TextStyle(color: Colors.white)),
              InkWell(
                onTap: (){},
                child: Text("view info", style: TextStyle(color: Color(0xffA6A09B)))
              ),
            ],
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.price,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Text(widget.precentage, style: TextStyle(color: Color(0xff34C759))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
