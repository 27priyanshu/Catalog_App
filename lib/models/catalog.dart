import 'dart:convert';

class CatalogModel {
  static List<Item> items = [
    Item(1, "iphone12", "Apple iPhone 12th generation", 999, "#33505a",
        "https://rukminim1.flixcart.com/image/832/832/kg8avm80/mobile/r/h/z/apple-iphone-12-dummyapplefsn-original-imafwg8duby8qbn4.jpeg?q=70"),
    Item(2, "Pixel 5", "Google pixel 5th generation", 699, "00ac51",
        "https://m.media-amazon.com/images/I/81-fNmQqlLL._SX679_.jpg"),
    Item(3, "Ipad mini", "Ipad mini 10th generation", 799, "00ac51",
        "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/ipad-2022-hero-blue-wifi-select_FMT_WHH?wid=940&hei=1112&fmt=png-alpha&.v=1664387252309"),
    Item(4, "Mac", "Mac inbuild m2 chip", 9099, "#00ac51",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTWdUXLTrEzQQeaxhDSRmDHZt3VwoKIlpm4JkX1NdSVA&s"),
    Item(
        5,
        "Samsung Galaxy S23",
        "Ultra 5G (12 GB RAM, 1 TB ROM, Green)",
        1012,
        "#33505a",
        "https://d2xamzlzrdbdbn.cloudfront.net/products/1ab5c706-fafd-4703-8371-9d07be3fb5ee23021205.jpg"),
    Item(6, "Nothing phone", "Android", 490, "#00ac51",
        "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRcMUaZ_eALHFYgypM9-nocCqX8tnYVZOpYzO8d72dHIvnak9sXGtQt3SQiFW6A7psLtxbixpMVhRRhNWhO9dZjwDLwpzvYnLi97fqiyN1JdW4U35hkaAG_sA")
  ];

  // static final catModel = CatalogModel._internal();

  // CatalogModel._internal();

  // factory CatalogModel() => catModel;

  //Get item with id
  Item getbyId(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //Get item with position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  );

  // factory Item.fromMap(Map<String, dynamic> map) {
  //   return Item(
  //     id: map["id"],
  //     name: map["name"],
  //     desc: map["desc"],
  //     price: map["price"],
  //     color: map["color"],
  //     image: map["image"],
  //   );
  // }
  // toMap() => {
  //       "id": id,
  //       "name": name,
  //       "desc": desc,
  //       "price": price,
  //       "color": color,
  //       "image": image
  //     };

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      desc ?? this.desc,
      price ?? this.price,
      color ?? this.color,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['id']?.toInt() ?? 0,
      map['name'] ?? '',
      map['desc'] ?? '',
      map['price'] ?? 0,
      map['color'] ?? '',
      map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
