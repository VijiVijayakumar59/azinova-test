import 'package:azinovatest/constants/constant_height.dart';
import 'package:azinovatest/model/item_model.dart';
import 'package:flutter/material.dart';

class ListDetails extends StatelessWidget {
  final Item item;
  const ListDetails({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: Text(
          item.itemName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(item.itemImage),
              ),
            ),
            const KHeight(size: 0.02),
            Text(
              item.itemName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const KHeight(size: 0.02),
            Text(
              item.itemDetails,
              style: const TextStyle(
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
