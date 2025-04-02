import 'package:flutter/material.dart';

import '../market.dart';
import '../seller_detail_page.dart';
import '../seller_profile_page.dart';


class SellersTabPage extends StatelessWidget {
  const SellersTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [

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
      );
  }
}
