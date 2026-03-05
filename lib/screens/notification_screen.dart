import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/app_header.dart';
import '../widgets/bottom_nav_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  static const _notifications = [
    {'title': 'Welcome to ICDMAI!', 'body': 'We are glad to have you here.', 'time': '2h ago'},
    {'title': 'Keynote starts soon', 'body': 'The morning keynote begins in 30 minutes.', 'time': '5h ago'},
    {'title': 'New poll available', 'body': 'Share your opinion on data ethics.', 'time': '1d ago'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      bottomNavigationBar: const BottomNavBar(currentIndex: 3),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _notifications.length,
        itemBuilder: (context, index) {
          final n = _notifications[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: AppTheme.cardDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.notifications, color: AppTheme.navyBlue),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(n['title']!, style: AppTheme.subheading),
                      const SizedBox(height: 4),
                      Text(n['body']!, style: AppTheme.body),
                    ],
                  ),
                ),
                Text(n['time']!, style: AppTheme.caption),
              ],
            ),
          );
        },
      ),
    );
  }
}
