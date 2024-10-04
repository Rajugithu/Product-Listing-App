import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/product_detail.dart';


class ProductTile extends StatelessWidget {
  final Product product;

  ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        product.imageUrl,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(product.title),
      subtitle: Text('\$${product.price}'),
      onTap: () {
        // Navigate to the product details screen when tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
    );
  }
}
