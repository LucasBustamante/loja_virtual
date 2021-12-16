import 'package:flutter/material.dart';
import 'package:vesti/colors.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 210,width: 165,
    decoration: BoxDecoration(color: kCaseColor,
        borderRadius: BorderRadius.circular(5),
    ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/teste.jpg'),
          )
          ],
        ),
      ),
    );
  }
}
