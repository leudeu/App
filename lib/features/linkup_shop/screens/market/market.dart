import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/features/linkup_shop/screens/market/seller_profile_page.dart';
import 'package:yt_ecommerce_admin_panel/features/linkup_shop/screens/market/widget/MostVisitedTabPage.dart';
import 'package:yt_ecommerce_admin_panel/features/linkup_shop/screens/market/widget/OnSalesTabPage.dart';
import 'package:yt_ecommerce_admin_panel/features/linkup_shop/screens/market/widget/sellers.dart';
import '../../../../utils/constants/sizes.dart';
import 'seller_detail_page.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title : Column(
            mainAxisAlignment : MainAxisAlignment.start,
            crossAxisAlignment : CrossAxisAlignment.start,

            children: [
              Text("Market", style : Theme.of(context).textTheme.headlineLarge),
              SizedBox(height:TSizes.md),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled : true,
                    fillColor : Colors.white,
                    hintText: 'Search Sellers...',
                    prefixIcon: Icon(Iconsax.search_normal),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onChanged: (value) {
                    // Implement search logic here
                  },
                ),
              ),
              SizedBox(height:TSizes.md),
            ],
          ),
          backgroundColor : Colors.blue,

          toolbarHeight: 150,
          bottom: TabBar(
            tabs:[
              Tab(text:"sellers"),
              Tab(text:"On sales"),
              Tab(text:"Most visited"),
            ]
          )

        ),
        body: TabBarView(
          children: [
            SellersTabPage(),

            OnsalesTabPage(),

            MostVisitedTabPage(),
          ]
        )
      ),
    );
  }
}

// List of sellers
final sellers = [
  Seller(image: 'assets/images/content/user.jpg', name: 'Seller 1', phoneNumber: '123-456-7890'),
  Seller(image: 'assets/images/products/user_img.jpg', name: 'Seller 2', phoneNumber: '987-654-3210'),
  Seller(image: 'assets/images/content/user.jpg', name: 'Seller 3', phoneNumber: '123-456-7890'),
  Seller(image: 'assets/images/products/user_img.jpg', name: 'Seller 4', phoneNumber: '987-654-3210'),
  Seller(image: 'assets/images/content/user.jpg', name: 'Seller 1', phoneNumber: '123-456-7890'),
  Seller(image: 'assets/images/products/user_img.jpg', name: 'Seller 2', phoneNumber: '987-654-3210'),
  Seller(image: 'assets/images/content/user.jpg', name: 'Seller 3', phoneNumber: '123-456-7890'),
  Seller(image: 'assets/images/products/user_img.jpg', name: 'Seller 4', phoneNumber: '987-654-3210'),
];

class Seller {
  final String? image;
  final String? name;
  final String? phoneNumber;

  Seller({
    required this.image,
    required this.name,
    required this.phoneNumber,
  });
}
