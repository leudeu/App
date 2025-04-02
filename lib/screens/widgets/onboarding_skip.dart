import 'package:flutter/material.dart';

import '../../features/authentication/controllers.onboarding/onboarding/onboarding_controller.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/device/device_utility.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () =>OnBoardingController.instance.skipPage,
        child: const Text('Skip'),
        ),
    );
  }
}