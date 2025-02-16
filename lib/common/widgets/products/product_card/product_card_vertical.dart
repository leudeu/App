import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/shadows.dart';
import '../../containers/rounded_container.dart';
import '../../icons/t_circular_icon.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {} ,
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor:dark ? TColors.dark: TColors.light,
              child: Stack(
                children: [
                  TRoundedImage(imageUrl: TImages.productImage8 , applyImageRadius: true),

                  ///sale
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withAlpha((0.1 * 900).toInt()),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                        child:Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                    ),
                  ),

                  /// favourite icon
                 Positioned(
                   top: 0,
                     right: 0,
                     child: const  TCircularIcon(icon: Iconsax.heart5, color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            /// Details
            Padding(
                padding: const EdgeInsets.only(left:TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const TProductTitleText('Green Nike Air Shoes', smallSize:true, title: 'true',),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                Row(
                  children:[
                    Text('Nike', overflow: TextOverflow.ellipsis,maxLines: 1, style: Theme.of(context).textTheme.labelMedium),
                    const SizedBox(width: TSizes.xs),
                    const Icon(Iconsax.verify5,color :TColors.primary, size: TSizes.iconXs)
                  ]
                )
              ]
            ),
            ),
        ],
        ),

      ),
    );
  }
}
