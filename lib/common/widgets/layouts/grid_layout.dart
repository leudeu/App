import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../products/product_card/product_card_vertical.dart';


class TGridLayout extends StatelessWidget {
  const TGridLayout({
  super.key,
  required this.itemCount,
  required this.itemBuilder,
  this.mainAxisExtent = 288,
  });

  final int itemCount;
  final double ? mainAxisExtent;
  final Widget ? Function(BuildContext, int ) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing:TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: 288,
      ),
      itemBuilder: (_, index)=> const TProductCardVertical(),


    );
  }
}
