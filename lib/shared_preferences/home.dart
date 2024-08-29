import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _username = '';
  String _password = '';

  @override
  void initState() {
    super.initState();
    getLoginInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Username: $_username'),
            Text('Password: $_password'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                logout();
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getLoginInfo() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username');
    print("UserName:${username}");
    final password = prefs.getString('password');
    print("Password:${password}");
    setState(() {
      _username = username!;
      _password = password!;
    });
  }

  Future<void>logout()async{
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_username);
    prefs.remove(_password);
  }
}