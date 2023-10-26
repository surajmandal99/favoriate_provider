import 'package:favoriate_provider/provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Cart")),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: provider.favoriteList.length,
                  itemBuilder: (context, index) {
                    return Card(child: Consumer<FavoriteProvider>(
                        builder: (context, value, child) {
                      return ListTile(
                        onTap: () {},
                        title: Text('item${provider.favoriteList[index]}'),
                        trailing: const Icon(Icons.favorite),
                      );
                    }));
                  }))
        ],
      ),
    );
  }
}
