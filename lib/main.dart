import 'package:delivey_app/dw9_delivey_app.dart';
import 'package:flutter/material.dart';

import 'app/core/config/env/env.dart';

 Future<void> main() async {
  await Env.i.load();
  runApp(const Dw9Deliveypp());
} 