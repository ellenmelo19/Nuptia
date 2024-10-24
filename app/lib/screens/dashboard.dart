import 'package:flutter/material.dart';
import 'package:app/widgets/cerimonyItemList.dart';

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
      body: SingleChildScrollView(child : Container(
        padding: EdgeInsets.all(32),
        color: widget._colorPallete['background'],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: <Widget>[
            Container(
              child: Text(
                "Bolo",
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: widget._colorPallete['text']
                ),
              ),
              margin: EdgeInsets.only(bottom: 16),
            ),
            Cerimonyitemlist(dataArray: []),            
            
            Container(
              child: Text(
                "Vestimentas",
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: widget._colorPallete['text']
                ),
              ),
              margin: EdgeInsets.only(bottom: 16, top: 24),
                ),
              
              Container(
              child: Text(
                "Alianças",
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: widget._colorPallete['text']
                ),
              ),
              margin: EdgeInsets.only(bottom: 16, top: 24),
                ),

              Container(
              child: Text(
                "Espaço",
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: widget._colorPallete['text']
                ),
              ),
              margin: EdgeInsets.only(bottom: 16, top: 24),
                ),

              Container(
              child: Text(
                "Organizadora",
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: widget._colorPallete['text']
                ),
              ),
              margin: EdgeInsets.only(bottom: 16, top: 24),
                ),

              Container(
              child: Text(
                "Buffet",
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: widget._colorPallete['text']
                ),
              ),
              margin: EdgeInsets.only(bottom: 16, top: 24),
                ),

              ],
            ),
          ),
          

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
