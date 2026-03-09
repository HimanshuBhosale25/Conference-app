import 'package:flutter/material.dart';
import '../mock_data.dart';
import '../theme.dart';
import '../widgets/app_header.dart';

class OrganisingTeamScreen extends StatelessWidget {
  const OrganisingTeamScreen({super.key});

  static final List<Map<String, dynamic>> _sections = [
    {'title': 'Technical Programme Chairs', 'data': MockData.technicalProgrammeChairs},
    {'title': 'Organising Chairs', 'data': MockData.organisingChairs},
    {'title': 'Publications Chair', 'data': MockData.publicationsChair},
    {'title': 'Finance Chairs', 'data': MockData.financeChairs},
    {'title': 'Website & Publicity', 'data': MockData.websitePublicity},
    {'title': 'International Liaison', 'data': MockData.internationalLiaison},
    {'title': 'Tutorial & Workshop', 'data': MockData.tutorialWorkshop},
    {'title': 'Special Session', 'data': MockData.specialSession},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: _sections.length,
        itemBuilder: (context, index) => _AccordionSection(
          title: _sections[index]['title'] as String,
          people: _sections[index]['data'] as List<Person>,
        ),
      ),
    );
  }
}

class _AccordionSection extends StatefulWidget {
  final String title;
  final List<Person> people;
  const _AccordionSection({required this.title, required this.people});

  @override
  State<_AccordionSection> createState() => _AccordionSectionState();
}

class _AccordionSectionState extends State<_AccordionSection> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: AppTheme.plainCardDecoration,
      child: Column(
        children: [
          InkWell(
            onTap: () => setState(() => _expanded = !_expanded),
            borderRadius: BorderRadius.circular(14),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  Expanded(
                    child: Text(widget.title,
                        style: AppTheme.subheading.copyWith(fontSize: 14)),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppTheme.cardBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('${widget.people.length}',
                        style: AppTheme.caption.copyWith(
                            color: AppTheme.navyBlue,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    _expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    color: AppTheme.navyBlue,
                  ),
                ],
              ),
            ),
          ),
          if (_expanded) ...[
            const Divider(height: 1),
            const SizedBox(height: 12),
            SizedBox(
              height: 180,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: widget.people.length,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) => _TeamCard(person: widget.people[index]),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ],
      ),
    );
  }
}

class _TeamCard extends StatelessWidget {
  final Person person;
  const _TeamCard({required this.person});

  void _showBio(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(person.imageAsset),
                  onBackgroundImageError: (_, __) {},
                  backgroundColor: AppTheme.cardBlue,
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(person.name, style: AppTheme.subheading),
                      const SizedBox(height: 4),
                      Text(person.role,
                          style: AppTheme.caption.copyWith(
                              color: AppTheme.navyBlue,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 12),
            Text(person.bio, style: AppTheme.body.copyWith(height: 1.6)),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showBio(context),
      child: SizedBox(
        width: 130,
        child: Container(
          decoration: AppTheme.cardDecoration,
          clipBehavior: Clip.hardEdge,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  person.imageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    color: AppTheme.cardBlue,
                    child: const Center(
                      child: Icon(Icons.person, size: 36, color: AppTheme.navyBlue),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(person.name,
                        style: AppTheme.subheading.copyWith(fontSize: 11),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    Text(person.role,
                        style: AppTheme.caption.copyWith(fontSize: 10),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
