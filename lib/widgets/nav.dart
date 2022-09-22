import 'package:flutter/material.dart';
import 'package:retron/screens/home.dart';
import 'package:retron/screens/loans.dart';
import 'package:retron/screens/prices.dart';
import 'package:retron/screens/profile.dart';
import 'package:retron/shared/constant.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
 final List<Widget> _widgetpages = const[
    Home(),Prices(),Loans(),Profile()
  ];

  int _selectedTabIndex = 0;
  void onItemTap(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTabIndex,
        children: 
          _widgetpages,
        
      ),
      bottomNavigationBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: textColor5.withOpacity(0.5),
                offset: Offset(0.0, -0.9,),
                blurRadius: 0,
              )
            ]),
          child: BottomNavigationBar(
            backgroundColor: background,
            elevation: 1.0,
            fixedColor: textColor100,
            unselectedItemColor: textColor10,
            iconSize: 20,
            selectedLabelStyle: const TextStyle(
                fontFamily: 'Mabry-Pro',
                fontSize: 10,
                fontWeight: FontWeight.w400,
                height: 1.5),
            unselectedLabelStyle: const TextStyle(
                fontFamily: 'Mabry-Pro',
                fontSize: 10,
                fontWeight: FontWeight.w400,
                height: 1.5),
            type: BottomNavigationBarType.fixed,
            items: const[
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/wallet.png')),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/prices.png')),
                  label: 'Prices'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/document.png')),
                  label: 'Loans'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/profile.png')),
                  label: 'Profile'),
            ],
            currentIndex: _selectedTabIndex,
            onTap: onItemTap,
          ),
        ),
        preferredSize: Size.fromHeight(10),
      ),
    );
  }
}
