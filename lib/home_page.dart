import 'package:flutter/material.dart';
import 'package:messenger_new/view/screens/chats.dart';
import 'package:messenger_new/view/screens/people.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentState=0;
  List<Widget> screens=[
    const Chats(),
    const People(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentState],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        currentIndex: currentState,
        onTap: (index){
          setState(() {
            currentState=index;
          });

        },
        items: const [
          BottomNavigationBarItem(
            label: 'chats',
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: 'People',
              icon: Icon(Icons.people))
        ],
      ),
    );

  }
}
