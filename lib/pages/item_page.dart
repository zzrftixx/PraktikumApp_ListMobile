import 'package:flutter/material.dart';
import 'package:flutter_application_appbelanja/model/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(item.imageUrl),
            ),
            SizedBox(height: 16),
            Text(
              item.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Rp ${item.price}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
