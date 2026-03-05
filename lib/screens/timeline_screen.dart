import 'package:flutter/material.dart';
import '../mock_data.dart';
import '../widgets/app_header.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/timeline_post.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: MockData.posts.length,
        itemBuilder: (context, index) => TimelinePostCard(post: MockData.posts[index]),
      ),
    );
  }
}
