import "package:flutter/material.dart";
import 'package:flutter_catalog/utils/themes.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  // const HomeDetailPage({super.key});
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});
  // super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50)
          ],
        ).p16(),
      ),
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
              width: context.screenWidth,
              child: Column(children: [
                catalog.name.text.xl4
                    .color(MyTheme.darkBluishColor)
                    .bold
                    .make(),
                catalog.desc.text
                    .textStyle(context.captionStyle)
                    .xl
                    .color(MyTheme.darkBluishColor)
                    .make(),
                10.heightBox,
                "WOI ybb cbsh lccb cba uhduy ui byc fne c idnn nej cejoqp jfh eiu nxuw dnuw xnui xniuw qxoinw cnewi cnmxs cniw cwnqqo cncwnceiux jd fybyhjabduye dygmdwpqiudd isudonxdndi ioxuend dxniondg dxyidn dgdg doxin ygdgcbb bsb oasbgdb"
                    .text
                    .textStyle(context.captionStyle)
                    .make()
                    .p24(),
              ]).py64(),
            ),
          ))
        ]),
      ),
    );
  }
}
