import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/drink_item.dart';

class DrinksPage extends StatelessWidget {
  DrinksPage({super.key});
  final List drinksItem = drinks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'Bebidas',
                style: TextStyle(fontFamily: 'Caveat', fontSize: 32),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? 3
                      : 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? 1.2
                      : 158 / 194),
              delegate: SliverChildBuilderDelegate((context, index) {
                return DrinkItem(
                    imageURI: drinksItem[index]['image'],
                    itemTitle: drinksItem[index]['name'],
                    itemPrice: drinksItem[index]['price']);
              }, childCount: drinksItem.length))
        ],
      ),
    );
  }
}
