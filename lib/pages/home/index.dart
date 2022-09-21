import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/index/index.dart';
import 'package:flutter_learn/pages/rent/index.dart';
import 'package:flutter_learn/pages/news/index.dart';
import 'package:flutter_learn/pages/user/index.dart';

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PageContent(
//       title: '首页',
//       child: TextButton(
//         child: const Text('登录'),
//         onPressed: () {
//           Navigator.pushNamed(context, '/login');
//         },
//       )
//     );
//   }
// }

class Home extends StatefulWidget {
  const Home({required Key key}) : super(key: key);

  @override
  State createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   static const List<Widget> _widgetOptions = <Widget>[
    Index(),
    Rent(),
    News(),
    User(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // icon链接：https://www.fluttericon.cn/
            icon: Icon(Icons.home),
            label: '首页',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '找房'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: '资讯'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '我的'
          ),
        ],
        iconSize: 20,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        selectedItemColor: Colors.green[200],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
