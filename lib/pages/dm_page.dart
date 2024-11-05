import 'package:flutter/material.dart';

class DMPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Direct Messages'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'DMs will be displayed here',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
