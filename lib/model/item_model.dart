class Item {
  final String itemImage;
  final String itemName;
  final String itemDetails;
  Item({
    required this.itemDetails,
    required this.itemImage,
    required this.itemName,
  });
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      itemDetails: json['itemDetails'],
      itemImage: json['itemImage'],
      itemName: json['itemName'],
    );
  }
}
