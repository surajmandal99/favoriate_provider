import 'package:favoriate_provider/provider/favorite_provider.dart';
import 'package:favoriate_provider/screens/select_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FavoriteProvider>(
      create: (_) => FavoriteProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SelectItemScreen(),
      ),
    );
  }
}
