import 'package:azinovatest/model/item_model.dart';

class ItemResponse {
  final String status;
  final String message;
  final List<Item> items;

  ItemResponse({required this.status, required this.message, required this.items});

  factory ItemResponse.fromJson(Map<String, dynamic> json) {
    return ItemResponse(
      status: json['status'],
      message: json['message'],
      items: List<Item>.from(
        json['items'].map((item) => Item.fromJson(item)),
      ),
    );
  }
}
