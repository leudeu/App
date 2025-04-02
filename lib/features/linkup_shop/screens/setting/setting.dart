import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

import "../../../../common/widgets/appbar/appbar.dart";
import "../../../../common/widgets/custom_shaps/containers/primary_header_container.dart";
import "../../../../common/widgets/layouts/list_tiles/TUserProfileTile.dart";
import "../../../../common/widgets/layouts/list_tiles/setting_name_tile.dart";
import "../../../../common/widgets/texts/section_heading.dart";
import "../../../../utils/constants/colors.dart";
import "../../../../utils/constants/sizes.dart";
import "../home/widgets/notification_page.dart";
import "../profile/profile.dart";

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child : Column(
          children : [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(title: Text('Account', style:Theme.of(context).textTheme.headlineMedium!.apply(color:TColors.white),), backgroundColor: TColors.primary,),


                  TUserProfileTile(onPressed: () =>Get.to(()=> const ProfileScreen()),),
                  const SizedBox(height:TSizes.spaceBtwSections),
                ]
            ),),
             /// body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TSettingMenuTile(icon: Iconsax.safe_home, title:'MY Address',subTitle:'set contact address', onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.notification, title:'Notifications',subTitle:'Access Notification', onTap: ()=> Get.to(()=> const NotificationPage()),),
                  TSettingMenuTile(icon: Iconsax.security_card, title:'Account Privacy',subTitle:'Privacy', onTap: (){},),

                  SizedBox(height: TSizes.spaceBtwSections),


                  TSectionHeading(title: 'App Settings', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingMenuTile(icon: Iconsax.document_upload, title:'Load data',subTitle:'upload from !!', onTap: (){},),
                  TSettingMenuTile(icon: Iconsax.location, title:'Geolocation',subTitle:'set recommendation based on location', trailing: Switch(value:true, onChanged:(value){})),
                  TSettingMenuTile(icon: Iconsax.image, title:'HD image Quality',subTitle:'set image quality to HD', trailing: Switch(value:false, onChanged:(value){})),
                  TSettingMenuTile(icon: Iconsax.translate, title:'Language',subTitle:'set app language', onTap: (){}, ),






                ]
              )
            )
          ]
        )
      )
    );
  }
}
