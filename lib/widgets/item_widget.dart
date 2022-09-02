import 'package:firstapp/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} is pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: const TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }
}
