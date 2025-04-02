import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/bindings/general_bindings.dart';
// Import your project's helpers, themes, and screens
import 'package:yt_ecommerce_admin_panel/screens/onboarding/onboarding.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/text_strings.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      //home: const OnBoardingScreen(),
      // Alternatively, you can use a loading indicator while setting up the app
       home: const Scaffold(
         backgroundColor: TColors.primary,
         body: Center(
           child: CircularProgressIndicator(
             color: Colors.blue, // Ensuring a valid color is used
           ),
         ),
      ),
      // getPages: [
      //   GetPage(name: '/', page: () => const HomeScreen()),
      //   GetPage(name: '/posting', page: () => const PostingPage()),
      // ],
    );
  }
}
