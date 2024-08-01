import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.remove('isLoggedIn');
              Navigator.of(context).pushReplacementNamed('/signIn');
            },
          )
        ],
      ),
      body: Center(
        child: Text('Welcome to the Tasks Page'),
      ),
    );
  }
}
