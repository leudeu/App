import 'package:flutter/material.dart';

class SellerDetailPage extends StatelessWidget {
  final String sellerName;

  const SellerDetailPage({
    super.key,
    required this.sellerName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$sellerName\'s Articles'),
      ),
      body: ListView(
        children: [

          ListTile(
            title: Text('Article 1'),
            subtitle: Text('Location 1'),
          ),
          ListTile(
            title: Text('Article 2'),
            subtitle: Text('Location 2'),
          ),
        ],
      ),
    );
  }
}
