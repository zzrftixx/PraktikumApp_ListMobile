import 'package:flutter/material.dart';
import 'package:flutter_application_appbelanja/model/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item('Alphard New 2024', 2300000000, 'assets/alphard.jpg'),
    Item('Toyota Fortuner', 80000000, 'assets/fortuner.jpg'),
    Item('Supra', 6500000, 'assets/supra.jpg'),
    Item('toyota rush', 7650000, 'assets/rush.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muh Andra Ariesfi | 362358302103'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: items[index],
                );
              },
              child: ListTile(
                title: Text(items[index].name),
                subtitle: Text('Rp ${items[index].price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
