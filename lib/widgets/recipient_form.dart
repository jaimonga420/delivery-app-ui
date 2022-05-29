import 'package:flutter/material.dart';

class RecipientForm extends StatefulWidget {
  const RecipientForm({Key? key}) : super(key: key);

  @override
  State<RecipientForm> createState() => _RecipientFormState();
}

class _RecipientFormState extends State<RecipientForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 9, bottom: 3),
                  child: Text('Name',
                      style: Theme.of(context).textTheme.headline5),
                ),
                TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffc4c4c4), width: 2.0),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, bottom: 3),
                  child: Text('Phone Number',
                      style: Theme.of(context).textTheme.headline5),
                ),
                TextFormField(
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffc4c4c4), width: 2.0),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, bottom: 3),
                  child: Text('Address',
                      style: Theme.of(context).textTheme.headline5),
                ),
                TextFormField(
                    keyboardType: TextInputType.streetAddress,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffc4c4c4), width: 2.0),
                      ),
                    )),
              ],
            )),
      ],
    );
  }
}
