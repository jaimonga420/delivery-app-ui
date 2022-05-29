import 'package:flutter/material.dart';

import '../widgets/my_parcels.dart';
import '../widgets/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 426,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Theme.of(context).appBarTheme.backgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Track Parcel',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/profile.png'),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: [
                      Text(
                        'Enter tracking no. or scan barcode',
                        style: Theme.of(context).textTheme.headline5,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 20),
                              border: InputBorder.none,
                              hintText: 'Tracking Number',
                              hintStyle: Theme.of(context).textTheme.headline5),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.asset('assets/images/barcode.png'),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 340,
                          height: 50,
                          child: TextButton(
                              onPressed: () {},
                              style: Theme.of(context).textButtonTheme.style,
                              child: const Text(
                                'Track Parcel',
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'My Parcels',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ],
          ),
          const MyParcels(),
          const BottomNavBar(),
        ],
      ),
    );
  }
}
