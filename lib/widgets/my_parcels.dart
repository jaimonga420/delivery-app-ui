import 'dart:convert';

import 'package:flutter/material.dart';

class MyParcels extends StatefulWidget {
  const MyParcels({Key? key}) : super(key: key);

  @override
  State<MyParcels> createState() => _MyParcelsState();
}

class _MyParcelsState extends State<MyParcels> {
  var _parcelsList = [];

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/parcels_info.json')
        .then((value) {
      setState(() {
        _parcelsList = json.decode(value);
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
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Expanded(
        child: ListView.builder(
            itemCount: _parcelsList.length,
            itemBuilder: (context, index) {
              final parcelStatus = _parcelsList[index]["status"];
              return Card(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(
                          (_parcelsList[index]["trackingid"]).toString(),
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/images/amazon.png',
                          width: 80,
                          fit: BoxFit.contain,
                        )
                      ]),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                parcelStatus,
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              const SizedBox(height: 7),
                              Text(
                                'Last updated: ${_parcelsList[index]["lastupdated"]} ',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 5,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.5)),
                                child: LinearProgressIndicator(
                                  backgroundColor: const Color(0xFFF8F8F8),
                                  value: 0.7,
                                  color: Theme.of(context)
                                      .appBarTheme
                                      .backgroundColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Details',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          IconButton(
                            iconSize: 15,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
