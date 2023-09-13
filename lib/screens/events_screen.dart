import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';
import 'package:hack_odd/widgets/event_card.dart';
import 'package:hack_odd/widgets/search_bar.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  final duplicateItems = List<String>.generate(100, (i) => "Item $i");
  late List<String> items;

  @override
  void initState() {
    items = duplicateItems;
    super.initState();
  }

  void filterSearchResults(String query) {
    setState(() {
      items = duplicateItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // User icon
          GestureDetector(
            onTap: () {},
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.png"),
              radius: 16,
            ),
          ),
          Gap(AppLayout.getWidth(8)),

          // Search Bar
          Expanded(
            child: AppBarSearch(
              filterSearchResults: (value) {
                filterSearchResults(value);
              },
            ),
          ),
          Gap(AppLayout.getWidth(8)),

          // Notification Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.domain_verification),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(30)),
            height: 2,
            decoration: BoxDecoration(color: Styles.primaryColor),
            width: double.infinity,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return EventCard(
                    eventTitle: "test",
                    eventDescription: "description",
                    eventParticipants: 100,
                    eventDate: DateTime.now(),
                    eventLocation: "alger");
              },
            ),
          ),
        ],
      ),
    );
  }
}
