import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/my_parcel_screen.dart';
import '../screens/send_parcel_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _selectedIndex = 1;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    }
    if (index == 1) {
      Navigator.of(context).pushReplacementNamed(SendParcelScreen.routeName);
    }
    if (index == 2) {
      Navigator.of(context).pushReplacementNamed(MyParcelScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedItemColor: Colors.grey[500],
      unselectedItemColor: Colors.grey[500],
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: 'My Parcels',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mark_email_read_rounded),
          label: 'Send Parcel',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_post_office),
          label: 'Parcels Center',
        ),
      ],
      onTap: _onTap,
    );
  }
}
