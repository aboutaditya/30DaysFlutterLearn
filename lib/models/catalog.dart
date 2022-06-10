class catalogModel {
  static final items = [
    Item(name: "iPhone 11", id: 1, desc: "Apple 11th generation iPhone", price: 699, iurl: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone11-select-2019-family_GEO_EMEA?wid=882&hei=1058&fmt=jpeg&qlt=90&.v=1567022219953")
  ];
}

class Item {
  final String name;
  final num id;
  final String desc;
  final num price;
  final String iurl;

  Item({required this.name, required this.id, required this.desc, required this.price, required this.iurl});
}
