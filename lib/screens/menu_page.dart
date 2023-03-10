import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/food_item.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});
  final List foodItems = comidas;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Menu',
              style: TextStyle(fontFamily: 'Caveat', fontSize: 32),
              textAlign: TextAlign.center,
            ),
          )),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return FoodItem(
                itemTitle: foodItems[index]['name'],
                itemPrice: foodItems[index]['price'],
                imageURI: foodItems[index]['image']);
          }, childCount: foodItems.length))
        ],
      ),
    );
  }
}
