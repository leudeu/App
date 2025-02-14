import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/features/linkup_shop/screens/home/widgets/home_appbar.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/containers/search_container.dart';
import '../../../../common/widgets/custom_shaps/containers/primary_header_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const HomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSearchContainer(text: 'Search' ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  Padding(padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(title:'Popular Categories' , showActionButton: false, textColor: Colors.white),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index){

                            return TVerticalImageText(image: TImages.shoeIcon, title: 'shoes', onTap:() {} ,);
                        
                        }),
                      )


                    ]
                  ))

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
