import 'dart:convert';

import "package:velocity_x/velocity_x.dart";
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/themes.dart';
import '../widgets/drawer.dart';
import '../widgets/items_widgets.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 25;

  final String name = "Priaynshu singh";

  @override
  void initState() {
    super.initState();

    loadData() async {
      await Future.delayed(Duration(seconds: 3));
      var catalogJson =
          await rootBundle.loadString("assets/files/catalog.json");
      var decodeData = jsonDecode(catalogJson);
      // print(decodeData);
      var productsData = decodeData['products'];
      CatalogModel.items = List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
      setState(() {});
      // print(productsData);
    }
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CatalogHeader(),
            if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              CatalogList().py16().expand()
            else
              Center(
                child: CircularProgressIndicator().centered().py16().expand(),
              )
          ]),
        ),
      ),
    );
  }
}
