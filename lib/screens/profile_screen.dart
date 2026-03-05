import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../theme.dart';
import '../mock_data.dart';
import '../widgets/app_header.dart';
import '../widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      bottomNavigationBar: const BottomNavBar(currentIndex: 4),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: AppTheme.plainCardDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 36,
                        backgroundColor: Colors.red.shade400,
                        child: Text(MockData.userName[0],
                            style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(height: 10),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppTheme.navyBlue),
                          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text('Edit', style: AppTheme.body.copyWith(color: AppTheme.navyBlue, fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: AppTheme.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: QrImageView(data: MockData.userEmail, version: QrVersions.auto, size: 75),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(MockData.userFullName, style: AppTheme.subheading),
                        const Divider(height: 16),
                        _profileRow(Icons.email_outlined, MockData.userEmail),
                        _profileRow(Icons.phone_outlined, 'N/A'),
                        _profileRow(Icons.person_outline, 'Prefer Not To Disclose'),
                        _profileRow(Icons.cake_outlined, 'N/A'),
                        _profileRow(Icons.location_on_outlined, 'N/A'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {},
                child: Text('Delete Account', style: AppTheme.buttonText),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('App Version: 1.0.0', style: AppTheme.caption),
                ElevatedButton(
                  style: AppTheme.primaryButton.copyWith(padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 24, vertical: 12))),
                  onPressed: () => context.go('/'),
                  child: Text('Log Out', style: AppTheme.buttonText),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileRow(IconData icon, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, size: 14, color: AppTheme.navyBlue),
          const SizedBox(width: 6),
          Expanded(child: Text(value, style: AppTheme.caption, overflow: TextOverflow.ellipsis)),
        ],
      ),
    );
  }
}
