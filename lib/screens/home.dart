import 'package:flutter/material.dart';
import 'package:furnitureapp/util/data.dart';
import 'package:furnitureapp/widgets/badge.dart';
import 'package:furnitureapp/widgets/product_item.dart';
import 'package:furnitureapp/widgets/room_item.dart';
import 'package:furnitureapp/widgets/search_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const <Widget>[
          Center(
            child: IconBadge(
              icon: Icons.shopping_cart,
            ),
          ),
          SizedBox(width: 20.0),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0),
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              "What are you \nlooking for?",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SearchCard(),
          ),
          const SizedBox(height: 30.0),
          buildRoomList(),
          const SizedBox(height: 20.0),
          buildTitleRow(),
          buildProductList(),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }

  buildRoomList() {
    return SizedBox(
      height: 275,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: furnitures.length,
        itemBuilder: (BuildContext context, int index) {
          Map furniture = furnitures[index];

          return RoomItem(
            furniture: furniture,
          );
        },
      ),
    );
  }

  buildTitleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          "Popular Products",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          child: const Text(
            "View More",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  buildProductList() {
    return SizedBox(
      height: 140.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: furnitures.length,
        itemBuilder: (BuildContext context, int index) {
          Map furniture = furnitures[index];

          return ProductItem(
            furniture: furniture,
          );
        },
      ),
    );
  }
}
