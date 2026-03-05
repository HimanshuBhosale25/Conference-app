import 'package:flutter/material.dart';
import '../theme.dart';
import '../mock_data.dart';

class PollCard extends StatefulWidget {
  final Poll poll;
  const PollCard({super.key, required this.poll});

  @override
  State<PollCard> createState() => _PollCardState();
}

class _PollCardState extends State<PollCard> {
  int? _selectedIndex;
  int _voteCount = 0;
  bool _submitted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: AppTheme.cardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.poll.question, style: AppTheme.subheading),
          const SizedBox(height: 12),
          ...widget.poll.options.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: _submitted ? null : () => setState(() => _selectedIndex = entry.key),
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  color: _selectedIndex == entry.key ? AppTheme.navyBlue.withOpacity(0.1) : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: _selectedIndex == entry.key ? AppTheme.navyBlue : Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    Icon(_selectedIndex == entry.key ? Icons.radio_button_checked : Icons.radio_button_off,
                        size: 18, color: _selectedIndex == entry.key ? AppTheme.navyBlue : Colors.grey),
                    const SizedBox(width: 8),
                    Expanded(child: Text(entry.value, style: AppTheme.body)),
                  ],
                ),
              ),
            );
          }),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$_voteCount votes', style: AppTheme.caption),
              _submitted
                  ? Text('✓ Voted', style: AppTheme.caption.copyWith(color: Colors.green))
                  : ElevatedButton(
                      style: AppTheme.primaryButton,
                      onPressed: _selectedIndex == null ? null : () => setState(() { _submitted = true; _voteCount++; }),
                      child: Text('Submit', style: AppTheme.buttonText.copyWith(fontSize: 13)),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
