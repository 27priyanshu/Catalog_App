import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalog;

  //collections of Ids
  final List<int> _itemIds = [];

// get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in a Cart
  List<Item> get items => _itemIds.map((id) => _catalog.getbyId(id)).toList();

  //Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add items
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
