// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:delivey_app/app/core/client/custon_dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApplicationBinding extends StatelessWidget {
  final Widget child;

  const ApplicationBinding({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => CustonDio(),
        )
      ],
      child: child,
    );
  }
}
