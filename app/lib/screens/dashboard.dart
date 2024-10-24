import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {    

  const dashboard({
    super.key,
    required Map<String,Color> colorPallete,
  }) : _colorPallete = colorPallete;

  
  @override
  State<dashboard> createState() => _DashboardState();
  final Map<String,Color> _colorPallete;
} 


class _DashboardState extends State<dashboard>{    
  int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Profile Page'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [

            
          ],
        )          
      ),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: widget._colorPallete['primary'],
        onTap: _onItemTapped,
      )
    );
  }
}
