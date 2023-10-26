import 'package:favoriate_provider/provider/favorite_provider.dart';
import 'package:favoriate_provider/screens/Cart_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectItemScreen extends StatefulWidget {
  const SelectItemScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<SelectItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Items '),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
              },
              child: const Icon(Icons.favorite)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Consumer<FavoriteProvider>(
                          builder: (context, value, child) {
                        return ListTile(
                          onTap: () {
                            if (value.favoriteList.contains(index)) {
                              value.removeFavorite(index);
                            } else {
                              value.addFavorite(index);
                            }
                          },
                          title: Text(
                            'item $index',
                          ),
                          trailing: Icon(value.favoriteList.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border_outlined),
                        );
                      }),
                    );
                  }))
        ],
      ),
    );
  }
}
