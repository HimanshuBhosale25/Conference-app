import 'package:flutter/material.dart';
import '../mock_data.dart';
import '../widgets/app_header.dart';
import '../widgets/poll_card.dart';

class PollsScreen extends StatelessWidget {
  const PollsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: MockData.polls.length,
        itemBuilder: (context, index) => PollCard(poll: MockData.polls[index]),
      ),
    );
  }
}
