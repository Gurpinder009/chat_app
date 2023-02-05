import 'package:clone_chat_app/router.dart';
import "package:flutter/material.dart";
import 'package:clone_chat_app/theme_data.dart';

class ProviderWidget extends StatelessWidget {
  const ProviderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: const MediaQueryData(),
        child: MaterialApp.router(
          theme: themeData,
          routerConfig: router,
        ));
  }
}
