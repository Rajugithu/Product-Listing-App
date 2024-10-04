import 'package:flutter/material.dart';
import '../models/product.dart'; // Import the Product model
import '../widgets/product_title.dart'; // Import the ProductTile widget

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'Gaming Keyboard',
      description: 'Gaming keyboards are a must-have for immersive nighttime gaming sessions. Designed for performance and comfort, these keyboards are among the top-selling gaming accessories.',
      price: 49.99,
      imageUrl: 'assests/gaming.jpg',
    ),
    Product(
      title: 'Camping',
      description: 'It is vey important ot spend some time for yourself. For that porpuse you need some assories that will help you to enjoy the journey and spend sometime. here is the some camping material that you should buy.',
      price: 39.99,
      imageUrl: 'assests/camp.jpeg',
    ),
    Product(
      title: 'Knife',
      description: 'Special cutting tool to cut fruits, vegitables and other things as well.',
      price: 9.99,
      imageUrl: 'assests/images.jpeg',
    ),
    Product(
      title: 'Camera',
      description: 'Camera is the tool that can be used to capture some special movements of you life. Here is the owesome camera with long term Quality with 12 mega pixal .',
      price: 69.99,
      imageUrl: 'assests/camera.jpg',
    ),
    Product(
      title: 'Wireless Headphone',
      description: 'Wireless  headphone, sound Quality 10/10, used for music listing and Gaming.',
      price: 29.99,
      imageUrl: 'assests/headphone.jpeg',
    ),
    Product(
      title: 'Bottle',
      description: 'Branded bottle. can be used for multiple pusposes. available is different colors.',
      price: 6.99,
      imageUrl: 'assests/bottle.jpeg',
    ),
    Product(
      title: 'Camping Tent',
      description: 'Camping tent is the best product to spend some time away fromt the rush. Owesome Quality.',
      price: 79.99,
      imageUrl: 'assests/camping.jpeg',
    ),
    Product(
      title: 'Perfume',
      description: 'Branded perfume. never compromise on the Quality.',
      price: 8.99,
      imageUrl: 'assests/perfume.jpeg',
    ),
    Product(
      title: 'Speaker',
      description: 'Speaker with base 10 to enjoy the music in room or anywhere else.',
      price: 19.99,
      imageUrl: 'assests/speaker.jpeg',
    ),
    Product(
      title: 'Tourch',
      description: 'Tourch, can be used for multiple purpose. also available on whole sale rates. ',
      price: 5.99,
      imageUrl: 'assests/tourch.jpeg',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}
