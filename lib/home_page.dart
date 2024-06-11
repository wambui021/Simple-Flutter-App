import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/home_background.png',
            fit: BoxFit.cover,
          ),
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white70,
                margin: EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(items[index]),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Selected ${items[index]}')),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
