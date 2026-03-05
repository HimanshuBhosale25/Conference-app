import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Center(
              child: Container(
                width: 80, height: 80,
                decoration: BoxDecoration(color: AppTheme.cardBlue, borderRadius: BorderRadius.circular(40)),
                child: Center(child: Text('ICDMAI', style: AppTheme.caption.copyWith(color: AppTheme.navyBlue, fontWeight: FontWeight.bold))),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(color: AppTheme.cardBlue, borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Let's start with your phone/email", style: AppTheme.subheading),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Phone / Email',
                        hintStyle: AppTheme.caption,
                        filled: true,
                        fillColor: AppTheme.white,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: AppTheme.primaryButton,
                      onPressed: () => context.go('/home'),
                      child: Text('Log In', style: AppTheme.buttonText),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Container(
                width: 200, height: 80,
                decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(12)),
                child: Center(child: Text('S4DS\nSOCIETY FOR DATA SCIENCE', textAlign: TextAlign.center, style: AppTheme.body.copyWith(color: Colors.white, fontWeight: FontWeight.bold))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
