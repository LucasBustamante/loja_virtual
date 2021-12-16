import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:vesti/colors.dart';
import 'package:vesti/gallery.dart';

const _kPages = <String, IconData>{

  'Home': Icons.home,
  'add': Icons.add,
  'Perfil': Icons.people,
};

class ConvexAppExample extends StatefulWidget {
  const ConvexAppExample({Key? key}) : super(key: key);

  @override
  _ConvexAppExampleState createState() => _ConvexAppExampleState();
}

class _ConvexAppExampleState extends State<ConvexAppExample> {
  final TabStyle _tabStyle = TabStyle.reactCircle;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: kSecondaryColor,
            body: Column(
              children: [
                Expanded(
                  child: Gallery()
                  /*TabBarView(
                    children: [
                      for (final icon in _kPages.values) Icon(icon, size: 64),
                    ],
                  ),*/
                )
              ],
            ),
            bottomNavigationBar: ConvexAppBar.badge(
             const <int, dynamic>{3: '98+'},
            style: _tabStyle,backgroundColor: kPrimaryColor,
            items: <TabItem>[
            for (final entry in _kPages.entries)
            TabItem(icon: entry.value, title: entry.key),
        ],
        onTap: (int i) => print('click index=$i'),
    ),
    ),
    );
  }}