import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/features/linkup_shop/screens/profile/widget/profile_menu.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../screens/login/login.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'), backgroundColor: TColors.white,
      ),

      body : SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage (image: TImages.user, width:80, height: 80),
                    TextButton(onPressed: () {} , child: const Text ('change Profile Picture')),

                  ]
                ),
              ),

              const SizedBox (height: TSizes.spaceBtwItems/2),
              const Divider(),
              const SizedBox (height: TSizes.spaceBtwItems),

              const TSectionHeading (title: 'profile Information' , showActionButton: false),
              const SizedBox (height: TSizes.spaceBtwItems),

              TProfileMenu(onPressed: () {  }, title: 'user', value: 'mike',),
              TProfileMenu(onPressed: () {  }, title: 'user_name', value: ' mr ben mike',),

              const SizedBox (height: TSizes.spaceBtwItems/2),
              const Divider(),
              const SizedBox (height: TSizes.spaceBtwItems),

              const TSectionHeading (title: 'personal info' , showActionButton: false),
              const SizedBox (height: TSizes.spaceBtwItems),

              TProfileMenu(onPressed: () {  }, title: 'user ID',icon: Iconsax.copy,  value: '45242',),
              TProfileMenu(onPressed: () {  }, title: 'E-mail', value: 'mr Gregorio@gmail.com',),
              TProfileMenu(onPressed: () {  }, title: 'phone _num', value: '61255-1524-255',),
              TProfileMenu(onPressed: () {  }, title: 'Gender', value: 'male',),

              const Divider(),
              const SizedBox (height: TSizes.spaceBtwItems),

              Center(
               child: TextButton(
                 onPressed: () => Get.to(()=> LoginScreen()),
                 child: const Text('close Account', style: TextStyle(color: Colors.red)),
               )
              )

            ]
          )
        )
      ),
    );
  }
}
