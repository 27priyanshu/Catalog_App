import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.color(Colors.black).make()),
      body: Column(
          children: [_CartList().p32().expand(), Divider(), _cartTotal()]),
    );
  }
}

class _cartTotal extends StatelessWidget {
  const _cartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        "\$${_cart.totalPrice}"
            .text
            .xl5
            .color(context.theme.accentColor)
            .make(),
        30.widthBox,
        ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying not Supported Yet".text.make()));
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 35, 7, 83),
            ),
            child: "Buy".text.white.center.make().w15(context))
      ]),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  final _cart = CartModel();
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.done),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle),
                    onPressed: () {
                      _cart.remove(_cart.items[index]);
                      setState(() {
                        
                      });
                    },
                  ),
                  title: _cart.items[index].name.text.make(),
                ));
  }
}
