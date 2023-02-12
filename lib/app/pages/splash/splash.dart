import 'package:delivey_app/app/core/ui/helps/size_extensions.dart';
import 'package:delivey_app/app/core/ui/widget/delivery_button.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.black,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.width,
                child: Image.asset(
                  'images/lanche.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: context.percentHeight(0.20),
                  ),
                  Image.asset('images/logo.png'),
                  SizedBox(
                    height: 50,
                  ),
                  DeliveryButton(
                    width: context.percentWidth(.60),
                    heigth: 35,
                    label: 'Acessar',
                    onPressed: () {
                      Navigator.of(context).popAndPushNamed('/home');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
