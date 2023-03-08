import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/highlight_item.dart';

class HighLights extends StatelessWidget {
  const HighLights({super.key});
  final List items = destaques;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(itemBuilder: (context, index) {
        return HighlightItem(
            imageURI: items[index]['image'],
            itemTitle: items[index]['name'],
            itemPrice: items[index]['price'],
            itemDescription: items[index]['description']);
      }),
    );
  }
}