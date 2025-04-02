import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/shadows.dart';
import '../../../../common/widgets/containers/rounded_container.dart';
import '../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/texts/product_title_text.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark ? TColors.darkGrey : TColors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: dark ? TColors.white : TColors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkGrey : TColors.white, // Background color based on mode
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Image Container
              Center(
                child: TRoundedContainer(
                  height: 180,
                  padding: const EdgeInsets.all(TSizes.sm),
                  backgroundColor: dark ? TColors.dark : TColors.light, // Background color based on mode
                  child: Stack(
                    children: [
                      TRoundedImage(
                          imageUrl: TImages.productImage3,
                          applyImageRadius: true),
                      Positioned(
                        bottom: TSizes.sm,
                        right: TSizes.sm,
                        child: TCircularIcon(
                          icon: Iconsax.heart,
                          color: dark ? TColors.white : TColors.primary,
                          backgroundColor: dark ? TColors.darkGrey : TColors.lightGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              /// Details
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TProductTitleText(
                      'Green Nike Air Shoes',
                      smallSize: true,
                      title: 'true',
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    Row(
                      children: [
                        Text('Nike',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.labelMedium),
                        const SizedBox(width: TSizes.xs),
                        const Icon(Iconsax.verify5,
                            color: TColors.primary, size: TSizes.iconXs)
                      ],
                    ),
                    const SizedBox(height: TSizes.sm),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '10,000 CFA',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Row(
                          children: [
                            const Icon(Iconsax.star1,
                                color: TColors.primary, size: TSizes.iconXs),
                            Text(
                              '4.5',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
