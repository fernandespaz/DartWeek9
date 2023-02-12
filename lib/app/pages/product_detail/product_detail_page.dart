import 'package:delivey_app/app/core/ui/style/text_style.dart';
import 'package:delivey_app/app/core/ui/widget/delivery_appBar.dart';
import 'package:delivey_app/app/core/ui/helps/size_extensions.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.width,
            height: context.percentHeight(0.4),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800'),
              fit: BoxFit.cover,
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'X-Burguer',
              style: context.textStyles.textExtraBold.copyWith(fontSize: 22),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                  child: Text(
                'Lanche acompanha pão, hambúguer, mussarela, alface, tomate e maionese',
                style: context.textStyles.textLight.copyWith(fontSize: 13),
              )),
            ),
          ),
          const Divider(),
          Row(
            children: [
              Text('TESDS'),
              Container(
                width: context.percentWidth(.5),
                padding: EdgeInsets.all(8),
                height: 68,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Adicionar',
                            style: context.textStyles.textExtraBold
                                .copyWith(fontSize: 14)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          r'R$ 6,99',
                          style: context.textStyles.textExtraBold
                              .copyWith(fontSize: 13),
                        )
                      ]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
