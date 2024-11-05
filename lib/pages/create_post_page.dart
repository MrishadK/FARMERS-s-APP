import 'package:flutter/material.dart';

class CreatePostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Create a new post here',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
