import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/app_header.dart';
import '../widgets/bottom_nav_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  static const _notifications = [
    {
      'title': 'Welcome to BRAINCON 2026!',
      'body': 'We are excited to have you at the flagship AI conference in Singapore. Check the agenda for all sessions.',
      'time': '1h ago',
      'icon': Icons.celebration,
    },
    {
      'title': 'Inaugural Keynote — Today 10:00 AM',
      'body': 'The Opening Keynote begins shortly at the Main Auditorium, MDIS. Don\'t miss it!',
      'time': '2h ago',
      'icon': Icons.mic,
    },
    {
      'title': 'Paper Submission Deadline Extended',
      'body': 'The final deadline for camera-ready paper submission has been extended by 48 hours.',
      'time': '5h ago',
      'icon': Icons.article_outlined,
    },
    {
      'title': 'New Poll Available',
      'body': 'Vote on "Which AI track excites you most?" — your opinion shapes future BRAINCON editions.',
      'time': '8h ago',
      'icon': Icons.poll_outlined,
    },
    {
      'title': 'Workshop Registration Open',
      'body': 'Limited seats for "Emerging AI Technologies for Human-Centric Systems" workshop on Day 3.',
      'time': '1d ago',
      'icon': Icons.school_outlined,
    },
    {
      'title': 'Hackathon Finals — Day 2, 4:30 PM',
      'body': 'Join us at the Innovation Lab, MDIS for the final presentations and prize distribution.',
      'time': '1d ago',
      'icon': Icons.code,
    },
    {
      'title': 'Conference App Update',
      'body': 'The BRAINCON 2026 app has been updated with the latest schedule and speaker profiles.',
      'time': '2d ago',
      'icon': Icons.system_update_outlined,
    },
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
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppTheme.navyBlue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(n['icon'] as IconData,
                      color: Colors.white, size: 18),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(n['title'] as String, style: AppTheme.subheading),
                      const SizedBox(height: 4),
                      Text(n['body'] as String,
                          style: AppTheme.body.copyWith(height: 1.4)),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Text(n['time'] as String, style: AppTheme.caption),
              ],
            ),
          );
        },
      ),
    );
  }
}
