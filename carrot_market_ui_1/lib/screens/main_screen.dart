import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        // 연결처리
        index: _selectedIndex,
        children: [
          Container(
            color: Colors.orange[100],
          ),
          Container(
            color: Colors.redAccent[100],
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amberAccent[100],
          ),
          Container(
            color: Colors.greenAccent,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            print("index : $index");
          });
        },
        items: [
          BottomNavigationBarItem(label: "홈", icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              label: "동네생활", icon: Icon(CupertinoIcons.rectangle)),
          BottomNavigationBarItem(
              label: "내 근처", icon: Icon(CupertinoIcons.location)),
          BottomNavigationBarItem(
              label: "채팅", icon: Icon(CupertinoIcons.chat_bubble)),
          BottomNavigationBarItem(
              label: "나의 당근", icon: Icon(CupertinoIcons.profile_circled)),
        ],
      ),
    );
  }
}
