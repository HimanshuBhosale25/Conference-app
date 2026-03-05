import 'package:flutter/material.dart';
import '../theme.dart';
import '../mock_data.dart';
import '../widgets/app_header.dart';
import '../widgets/bottom_nav_bar.dart';

class AgendaScreen extends StatelessWidget {
  const AgendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: MockData.agenda.length,
        itemBuilder: (context, index) {
          final item = MockData.agenda[index];
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(width: 12, height: 12,
                      decoration: BoxDecoration(color: AppTheme.navyBlue, shape: BoxShape.circle)),
                  if (index < MockData.agenda.length - 1)
                    Container(width: 2, height: 70, color: AppTheme.navyBlue.withOpacity(0.2)),
                ],
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(14),
                  decoration: AppTheme.plainCardDecoration,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item['time']!, style: AppTheme.caption.copyWith(color: AppTheme.navyBlue, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 2),
                          Row(children: [
                            const Icon(Icons.location_on, size: 11, color: Colors.grey),
                            const SizedBox(width: 2),
                            Text(item['location']!, style: AppTheme.caption),
                          ]),
                        ],
                      ),
                      const SizedBox(width: 12),
                      Expanded(child: Text(item['title']!, style: AppTheme.subheading.copyWith(fontSize: 13))),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
