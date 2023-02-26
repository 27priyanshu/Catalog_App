import "package:flutter/material.dart";
import 'package:flutter_catalog/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  // const HomeDetailPage({super.key});
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
      : assert(catalog != null);
  // super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .h32(context),
          Expanded(
              child: VxArc(
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            height: 30.0,
            child: Container(
              color: Colors.white,
            ),
          ))
        ]),
      ),
    );
  }
}
