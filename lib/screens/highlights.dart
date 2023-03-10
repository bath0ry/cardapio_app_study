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
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'Veja nossos destaques!',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Caveat', fontSize: 32),
              ),
            )),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return HighlightItem(
                  imageURI: items[index]['image'],
                  itemTitle: items[index]['name'],
                  itemPrice: items[index]['price'],
                  itemDescription: items[index]['description']);
            }, childCount: items.length))
          ],
        ));
  }
}
