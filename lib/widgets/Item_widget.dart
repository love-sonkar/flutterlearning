import 'package:flutter/material.dart';
import 'package:loginpage/models/Item.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: Image(image: NetworkImage(item.image)),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(
            fontSize: 20,
            color: const Color.fromARGB(255, 37, 144, 177),
          ),
        ),
      ),
    );
  }
}

//no use
test(item) {
  SizedBox(
    width: 100,
    child: Column(
      children: [
        Image(
          fit: BoxFit.cover,
          height: 100,
          width: 100,
          image: NetworkImage(item.image),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(item.name), Text(item.price.toString())],
        ),
      ],
    ),
  );
}
