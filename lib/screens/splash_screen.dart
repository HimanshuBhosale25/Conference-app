import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110, height: 110,
                    decoration: BoxDecoration(
                      color: AppTheme.navyBlue,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: AppTheme.navyBlue.withOpacity(0.3), blurRadius: 20, offset: const Offset(0, 8))],
                    ),
                    child: Center(
                      child: Text('ICDMAI', style: AppTheme.subheading.copyWith(color: AppTheme.white, fontSize: 14, letterSpacing: 1.2)),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text('Conference App', style: AppTheme.caption.copyWith(letterSpacing: 1.5, color: AppTheme.greyText)),
                  const SizedBox(height: 48),
                  SizedBox(
                    width: 180,
                    child: ElevatedButton(
                      style: AppTheme.primaryButton,
                      onPressed: () => context.go('/login'),
                      child: Text('Enter', style: AppTheme.buttonText),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 48),
            child: Container(
              width: 220, height: 80,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color(0xFFFF6B00), Color(0xFFFF9A3C)]),
                borderRadius: BorderRadius.circular(14),
                boxShadow: [BoxShadow(color: Colors.orange.withOpacity(0.3), blurRadius: 12, offset: const Offset(0, 4))],
              ),
              child: Center(
                child: Text('S4DS\nSociety for Data Science', textAlign: TextAlign.center,
                    style: AppTheme.body.copyWith(color: Colors.white, fontWeight: FontWeight.bold, height: 1.6)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
