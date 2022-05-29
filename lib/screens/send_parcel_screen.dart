import 'dart:convert';

import 'package:flutter/material.dart';

import '../widgets/bottom_navbar.dart';

class SendParcelScreen extends StatefulWidget {
  const SendParcelScreen({Key? key}) : super(key: key);

  static const routeName = '/sendparcel';

  @override
  State<SendParcelScreen> createState() => _SendParcelScreenState();
}

class _SendParcelScreenState extends State<SendParcelScreen> {
  var _parcelSize = [];

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/parcel_size.json')
        .then((value) {
      setState(() {
        _parcelSize = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    _initData();
    super.initState();
  }

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
                  'Send Parcel',
                  style: Theme.of(context).textTheme.headline1,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  'Parcel Size',
                  style: Theme.of(context).textTheme.headline3,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _parcelSize.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 15, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Image.asset(_parcelSize[index]['image']),
                              ],
                            ),
                            const SizedBox(
                              width: 45,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _parcelSize[index]['size'],
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(_parcelSize[index]['dimensions'],
                                    style:
                                        Theme.of(context).textTheme.headline4),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  _parcelSize[index]['description'],
                                  style: Theme.of(context).textTheme.headline5,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const BottomNavBar(),
        ],
      ),
    );
  }
}
