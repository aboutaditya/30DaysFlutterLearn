import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'dart:ui' show lerpDouble;

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (() {
          print("iPhone 11");
        }),
          leading: Image.network(item.iurl),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price}",
            style: const TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
            textScaleFactor: 1.5,
          )),
    );
  }
}
