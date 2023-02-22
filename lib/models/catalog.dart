class CatalogModel {
  static final items = [
    Item(1, "iphone12", "Apple iPhone 12th generation", 999, "#33505a",
        "https://rukminim1.flixcart.com/image/832/832/kg8avm80/mobile/r/h/z/apple-iphone-12-dummyapplefsn-original-imafwg8duby8qbn4.jpeg?q=70")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
