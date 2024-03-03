import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue, // App bar color
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://m.media-amazon.com/images/I/61okQ08+FoL._AC_UF1000,1000_QL80_.jpg', // Placeholder profile picture URL
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Ippo Makunouchi',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Number of punches $_counter',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment Counter',
          child: Icon(Icons.add),
          backgroundColor: Colors.blue, // Floating action button color
        ),
      ),
    );
  }
}
