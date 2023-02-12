import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'product_detail_page.dart';

class ProductDetailBinding {
ProductDetailBinding._();
   static Widget get page => MultiProvider(
    providers:[
    Provider(create: (context) => Object()),
  ],child: const ProductDetailPage() ,);
}