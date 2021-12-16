import 'package:flutter/material.dart';
import 'package:vesti/convex_appbar.dart';

import 'colors.dart';

class AppTeste extends StatefulWidget {
  const AppTeste({Key? key}) : super(key: key);

  @override
  _AppTesteState createState() => _AppTesteState();
}

class _AppTesteState extends State<AppTeste> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: kPrimaryColor,
          flexibleSpace: SafeArea(
            child: FlexibleSpaceBar(
              background: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.5),
                    child: Image.asset('assets/logo.png',
                      width: 205,),
                  )
                ],
              ),
            ),
          ),
        ),
        const SliverFillRemaining(child: ConvexAppExample(),)
      ],
    );
  }
}
