import 'package:flutter/material.dart';

class DrinkItem extends StatelessWidget {
  const DrinkItem(
      {Key? key,
      required this.imageURI,
      required this.itemTitle,
      required this.itemPrice})
      : super(key: key);
  final String imageURI;
  final String itemTitle;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: Theme.of(context).colorScheme.surfaceVariant,
      elevation: 0,
      child: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: 90,
                maxHeight: double.infinity,
                minWidth: 90,
                maxWidth: double.infinity),
            child: Image(
              image: AssetImage(imageURI),
              fit: BoxFit.cover,
              height: 91.5,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  itemTitle,
                  style: const TextStyle(fontSize: 16),
                ),
                Text("R\$ " + itemPrice),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
