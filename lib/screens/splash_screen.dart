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
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      'assets/braincon_logo.png',
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) => Container(
                        decoration: BoxDecoration(
                          color: AppTheme.navyBlue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            'BRAIN',
                            style: AppTheme.subheading.copyWith(
                              color: AppTheme.white,
                              fontSize: 16,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'BRAINCON 2026',
                    style: AppTheme.heading.copyWith(
                      color: AppTheme.navyBlue,
                      fontSize: 22,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '20–22 March 2026 • Singapore',
                    style: AppTheme.caption.copyWith(
                      letterSpacing: 0.8,
                      color: AppTheme.greyText,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Frugal, Sovereign, Societal Scale AI\nand Agentic AI',
                      textAlign: TextAlign.center,
                      style: AppTheme.caption.copyWith(
                        color: AppTheme.navyBlue,
                        fontStyle: FontStyle.italic,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      style: AppTheme.primaryButton,
                      onPressed: () => context.go('/login'),
                      child: Text('Get Started', style: AppTheme.buttonText),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Column(
              children: [
                Text(
                  'Organised by',
                  style: AppTheme.caption.copyWith(color: AppTheme.greyText),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _OrgBadge(
                      text: 'BRAIN\nFoundation',
                      color: AppTheme.navyBlue,
                    ),
                    const SizedBox(width: 12),
                    _OrgBadge(
                      text: 'GHRCEM\nPune',
                      color: Colors.red.shade700,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OrgBadge extends StatelessWidget {
  final String text;
  final Color color;
  const _OrgBadge({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppTheme.body.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          height: 1.5,
        ),
      ),
    );
  }
}
