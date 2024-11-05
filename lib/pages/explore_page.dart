import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[800],
          child: Column(
            children: [
              Image.asset(
                'assets/explore_image.jpg',
                fit: BoxFit.cover,
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Explore Item ${index + 1}',
                    style: const TextStyle(color: Colors.white)),
              ),
            ],
          ),
        );
      },
    );
  }
}
