import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../profile/profile.dart';

import 'notification_page.dart'; // Import the NotificationPage

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    int notificationCount = 4; // Example count, replace with your actual count

    return TAppBar(
      backgroundColor: Colors.transparent, // Ensures no white background
      leadingIcon: Iconsax.profile_circle,
      leadingOnPressed:  () =>Get.to(()=>  ProfileScreen()),

      title:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.grey),
          ),
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () => Get.to(() => NotificationPage()), // Navigate to NotificationPage
              icon: const Icon(Iconsax.notification, color: TColors.black),
            ),
            if (notificationCount > 0)
              Positioned(
                right: 11,
                top: 11,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$notificationCount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
