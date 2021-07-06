import 'package:flutter/material.dart';
import 'ChatPage.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon:  Icon(Icons.message),
          title: Text("chats"),),
          BottomNavigationBarItem(icon:  Icon(Icons.group_work),
            title: Text("channels"),),
          BottomNavigationBarItem(icon:  Icon(Icons.account_box),
            title: Text("Profile"),),
        ],
      ),
    );
  }
}
