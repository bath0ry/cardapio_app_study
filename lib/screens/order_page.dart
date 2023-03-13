import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/order_item.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});
  final List orderItems = pedido;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ristorante Panucci"),
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(
              Icons.account_circle,
              size: 32,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text(
                'Pedidos',
                style: TextStyle(fontFamily: 'Caveat', fontSize: 32),
                textAlign: TextAlign.left,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(((context, index) {
              return OrderItem(
                  imageURI: orderItems[index]['image'],
                  itemTitle: orderItems[index]['name'],
                  itemPrice: orderItems[index]['price']);
            }), childCount: orderItems.length))
          ],
        ),
      ),
    );
  }
}
