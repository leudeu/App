import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/screens/onboarding/onboarding.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/text_strings.dart';

import 'features/linkup_shop/screens/home/home.dart';
import 'features/linkup_shop/screens/home/widgets/posting_page.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title:TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/posting', page: () => const PostingPage()),
      ],
    );
  }
}
