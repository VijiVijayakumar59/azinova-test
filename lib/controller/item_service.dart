import 'dart:convert';

import 'package:azinovatest/model/item_model.dart';
import 'package:http/http.dart' as http;

class ItemService {
  Future<List<Item>> fetchItems() async {
    final response = await http.get(Uri.parse("https://demo.azinova.me/machine-test/api/get_items"));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body)['items'];
      return data.map((itemJson) => Item.fromJson(itemJson)).toList();
    } else {
      throw Exception("Failed to load items");
    }
  }
}
