import 'package:delivey_app/app/pages/product_detail/product_detail_binding.dart';
import 'package:delivey_app/app/pages/product_detail/product_detail_page.dart';
import 'package:delivey_app/app/pages/splash/splash.dart';
import 'package:flutter/material.dart';

import 'app/core/provider/application_binding.dart';
import 'app/core/ui/theme/theme_config.dart';
import 'app/pages/home/home_binding.dart';

class Dw9Deliveypp extends StatelessWidget {
  const Dw9Deliveypp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Delivey App',
        theme: ThemeConfig.theme,
        routes: {
          '/':(context) => SplashPage(),
          '/home':(context) => HomeBinding.page,
          '/produtDetail': (context) => ProductDetailBinding.page,
        },
      ),
    );
  }
}
