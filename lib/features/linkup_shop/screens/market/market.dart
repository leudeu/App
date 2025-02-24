import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/features/linkup_shop/screens/market/seller_profile_page.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/containers/search_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'seller_profile_page.dart';
import 'seller_detail_page.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Market', style: Theme.of(context).textTheme.headlineMedium),
        backgroundColor: TColors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
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
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: sellers.length,
              itemBuilder: (context, index) {
                final seller = sellers[index];
                return SellerProfile(
                  image: seller.image,
                  name: seller.name,
                  phoneNumber: seller.phoneNumber,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SellerDetailPage(sellerName: seller.name ?? 'Unknown'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
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
