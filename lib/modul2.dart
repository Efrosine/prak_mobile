import 'package:flutter/material.dart ';
import 'package:prak_mobile/profile_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 2;
  final List<Widget> _selectedWidget = const [
    Text('Home'),
    Text('College'),
    ProfileView(),
  ];

  final List<String> _title = ['Home', 'College', 'Profile'];

  _appBar() {
    return AppBar(
      title: Text(
        _title[_index],
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
    );
  }

  _body() {
    return Center(child: _selectedWidget.elementAt(_index));
  }

  _botNavBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'College'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      ],
      currentIndex: _index,
      selectedItemColor: Colors.blue,
      onTap: _onTap,
    );
  }

  _onTap(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _botNavBar(),
    );
  }
}
