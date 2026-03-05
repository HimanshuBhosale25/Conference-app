import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme.dart';
import '../widgets/app_header.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/story_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 14),
            const StoryRow(),
            const SizedBox(height: 14),

            // Welcome banner
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: AppTheme.plainCardDecoration,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.emoji_events, color: Colors.amber, size: 18),
                              const SizedBox(width: 6),
                              Flexible(
                                child: Text(
                                  'You are our Champion!!',
                                  style: AppTheme.subheading.copyWith(color: AppTheme.navyBlue),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "We're excited you chose to be part of this conference. These 3 days will be full of fun, excitement and opportunities!",
                            style: AppTheme.caption.copyWith(height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 72, height: 72,
                      decoration: BoxDecoration(
                        color: AppTheme.cardBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.play_circle_fill, size: 36, color: AppTheme.navyBlue),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 14),

            // Hello banner
            Container(
              width: double.infinity,
              color: Colors.red.shade600,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text('Hello Everyone! 👋', style: AppTheme.subheading.copyWith(color: Colors.white)),
            ),
            const SizedBox(height: 14),

            // Tab switcher
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red.shade400),
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.red.shade600,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(9),
                            bottomLeft: Radius.circular(9),
                          ),
                        ),
                        child: Center(
                          child: Text('ICDMAI',
                              style: AppTheme.body.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text('S4DS',
                            style: AppTheme.body.copyWith(color: Colors.red.shade600, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Icon shortcuts
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _HomeIcon(icon: Icons.help_outline, label: "FAQ's", onTap: () => _showFAQDialog(context)),
                  _HomeIcon(icon: Icons.mic_none, label: 'Speakers', onTap: () => context.push('/speakers')),
                  _HomeIcon(icon: Icons.group_outlined, label: 'Teams', onTap: () => context.push('/teams')),
                  _HomeIcon(icon: Icons.poll_outlined, label: 'Polls', onTap: () => context.push('/polls')),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Sponsor banner
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8, offset: const Offset(0, 2))],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: AppTheme.cardBlue, borderRadius: BorderRadius.circular(8)),
                      child: const Icon(Icons.star_rounded, color: AppTheme.navyBlue, size: 22),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("India's Super Brain", style: AppTheme.subheading),
                          Text('Presenting Sponsor', style: AppTheme.caption),
                        ],
                      ),
                    ),
                    Text('Sponsor',
                        style: AppTheme.caption.copyWith(color: AppTheme.navyBlue, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFAQDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("FAQ's", style: AppTheme.subheading),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _faqItem('What is ICDMAI?', 'International Conference on Data Management and AI.'),
            _faqItem('Where is it held?', 'Check the Agenda screen for venue details.'),
            _faqItem('How do I vote in polls?', 'Go to Polls from the Home screen.'),
          ],
        ),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('Close'))],
      ),
    );
  }

  Widget _faqItem(String q, String a) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(q, style: AppTheme.body.copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(height: 2),
          Text(a, style: AppTheme.caption),
        ],
      ),
    );
  }
}

class _HomeIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  const _HomeIcon({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppTheme.navyBlue,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [BoxShadow(color: AppTheme.navyBlue.withOpacity(0.25), blurRadius: 8, offset: const Offset(0, 4))],
            ),
            child: Icon(icon, color: AppTheme.white, size: 26),
          ),
          const SizedBox(height: 6),
          Text(label, style: AppTheme.caption.copyWith(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
