import 'package:flutter/material.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_card/product_card_vertical.dart';
import '../../../../../utils/constants/sizes.dart';
import '../market.dart';
import '../seller_detail_page.dart';
import '../seller_profile_page.dart';


class OnsalesTabPage extends StatelessWidget {
  const OnsalesTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(TSizes.defaultSpace),
          child : TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
    );
  }
}
