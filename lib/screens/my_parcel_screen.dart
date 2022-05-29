import 'package:flutter/material.dart';

import '../widgets/my_parcels.dart';
import '../widgets/bottom_navbar.dart';

class MyParcelScreen extends StatefulWidget {
  const MyParcelScreen({Key? key}) : super(key: key);

  static const routeName = '/myparcel';

  @override
  State<MyParcelScreen> createState() => _MyParcelScreenState();
}

class _MyParcelScreenState extends State<MyParcelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  'My Parcels',
                  style: Theme.of(context).textTheme.headline1,
                )
              ],
            ),
          ),
          const MyParcels(),
          const BottomNavBar(),
        ],
      ),
    );
  }
}
