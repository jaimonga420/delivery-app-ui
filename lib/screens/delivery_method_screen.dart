import 'dart:convert';

import 'package:flutter/material.dart';

import '../widgets/bottom_navbar.dart';
import '../widgets/recipient_form.dart';

class DeliveryMethodScreen extends StatefulWidget {
  const DeliveryMethodScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryMethodScreen> createState() => _DeliveryMethodScreenState();
}

class _DeliveryMethodScreenState extends State<DeliveryMethodScreen> {
  var _deliveryMethods = [];

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/delivery_methods.json')
        .then((value) {
      setState(() {
        _deliveryMethods = json.decode(value);
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
                  'Delivery Method',
                  style: Theme.of(context).textTheme.headline3,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _deliveryMethods.length,
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
                                Image.asset(_deliveryMethods[index]['image']),
                              ],
                            ),
                            const SizedBox(
                              width: 45,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _deliveryMethods[index]['from'],
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(_deliveryMethods[index]['delivery'],
                                    style:
                                        Theme.of(context).textTheme.headline4),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: RecipientForm(),
          ),
          const BottomNavBar(),
        ],
      ),
    );
  }
}
