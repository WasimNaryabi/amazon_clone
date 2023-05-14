import 'package:amazon_clone/features/shop/model/product.dart';
import 'package:amazon_clone/features/shop/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShopScreen extends StatefulWidget {
  static const String routeName = '/shop-screen';
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<Product> products = [
    Product(
      name: 'Product 1',
      category: 'Category 1',
      rating: 4.5,
      price: 40.0,
      image: 'assets/product1.jpg',
    ),
    Product(
      name: 'Product 2',
      category: 'Category 2',
      rating: 3.8,
      price: 90.0,
      image: 'assets/product2.jpg',
    ),
    Product(
      name: 'Product 3',
      category: 'Category 1',
      rating: 4.2,
      price: 80.0,
      image: 'assets/product3.jpg',
    ),
    // Add more products here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
