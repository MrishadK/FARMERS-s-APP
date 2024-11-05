import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Farmers\' Feed',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              // Action for like button
            },
          ),
          IconButton(
            icon: Icon(Icons.messenger_outline),
            onPressed: () {
              // Action for direct message button
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // Stories section
          Container(
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Number of stories
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.purple,
                        child: Text(
                          'S$index',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Story $index',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Post sections
          for (int i = 0; i < 3; i++) // Loop for posts
            Column(
              children: [
                // User information at the top of each post
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                  title: Text(
                    'User $i',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(Icons.more_vert, color: Colors.white),
                ),
                // Post image
                Container(
                  height: 300,
                  color: Colors.grey[800], // Placeholder color for post image
                  alignment: Alignment.center,
                  child: Text(
                    '500 x 300',
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
                // Post actions (like, comment, share, save)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border,
                                color: Colors.white),
                            onPressed: () {
                              // Action for like button
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.comment_outlined,
                                color: Colors.white),
                            onPressed: () {
                              // Action for comment button
                            },
                          ),
                          IconButton(
                            icon:
                                Icon(Icons.send_outlined, color: Colors.white),
                            onPressed: () {
                              // Action for share button
                            },
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.bookmark_border, color: Colors.white),
                        onPressed: () {
                          // Action for save button
                        },
                      ),
                    ],
                  ),
                ),
                // Like and description section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Liked by user1 and others',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'User $i Caption goes here...',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
