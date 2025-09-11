import 'package:flutter/material.dart';
import '../models/cup.dart';

class CupDetailPage extends StatelessWidget {
  final Cup cup;
  final VoidCallback onBack;
  const CupDetailPage({Key? key, required this.cup, required this.onBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cup.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: onBack,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Basic info
            Text("Datum: ${cup.date}", style: TextStyle(fontSize: 18)),
            Text("Plats: ${cup.location}", style: TextStyle(fontSize: 18)),
            Text("Typ: ${cup.type}", style: TextStyle(fontSize: 18)),
            if (cup.description.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text("Lag: ${cup.description}", style: TextStyle(fontSize: 18)),
              ),
            SizedBox(height: 24),

            // Pågående & Kommande Admin panel
            if (cup.section == "Pågående" || cup.section == "Kommande")
              Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Administration",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text(
                          "The event is currently offline, access is restricted to administrators."),
                      SizedBox(height: 8),
                      TextField(decoration: InputDecoration(labelText: 'Username')),
                      SizedBox(height: 8),
                      TextField(
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true),
                      SizedBox(height: 8),
                      Text("You automatically agree to CupOnline’s terms and conditions."),
                      SizedBox(height: 8),
                      TextButton(onPressed: () {}, child: Text("Forgot password?")),
                    ],
                  ),
                ),
              ),

            // Genomförda Cup Details
            if (cup.section == "Genomförda") ...[
              SizedBox(height: 16),
              Text("Event Finished",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 12),
              Text(
                "This cup finished on ${cup.date}. Below are the details of the event.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),

              // Cards for Teams, Players, Games, Groups, Classes
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _infoCard(context, "Teams", "10", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailPage(title: "Teams", count: 10)),
                    );
                  }),
                  _infoCard(context, "Team Members", "211", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailPage(title: "Team Members", count: 211)),
                    );
                  }),
                  _infoCard(context, "Games", "31", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailPage(title: "Games", count: 31)),
                    );
                  }),
                  _infoCard(context, "Groups", "2", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailPage(title: "Groups", count: 2)),
                    );
                  }),
                  _infoCard(context, "Classes", "1", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailPage(title: "Classes", count: 1)),
                    );
                  }),
                ],
              ),

              SizedBox(height: 16),
              Text(
                "For more information or historical results, please contact the organizer via email: cup@khk.se",
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ]
          ],
        ),
      ),
    );
  }

  // Helper widget for clickable cards
  Widget _infoCard(BuildContext context, String title, String count, VoidCallback onTap) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 64) / 2, // 2 cards per row
      child: Card(
        color: Colors.lightBlue[50],
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                Text(title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(count, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Mock detail page for Teams, Games, etc.
class DetailPage extends StatelessWidget {
  final String title;
  final int count;
  const DetailPage({Key? key, required this.title, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          "$title details ($count items)",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
