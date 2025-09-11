import 'package:flutter/material.dart';
import '../models/cup.dart';
import '../widgets/cup_card.dart';
import 'cup_detail_page.dart';

class HomePage extends StatefulWidget {
  final ValueChanged<Cup> onCupTap;
  const HomePage({Key? key, required this.onCupTap}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Independent visible counts for each section
  int visiblePagande = 3;
  int visibleKommande = 3;
  int visibleGenomforda = 3;

  List<Cup> _getCupsBySection(String section) =>
      mockCups.where((c) => c.section == section).toList();

  @override
  Widget build(BuildContext context) {
    final pagandeCups = _getCupsBySection("Pågående");
    final kommandeCups = _getCupsBySection("Kommande");
    final genomfordaCups = _getCupsBySection("Genomförda");

    return ListView(
      children: [
        _buildSection("Pågående Cuper", pagandeCups, visiblePagande, (val) {
          setState(() => visiblePagande = val);
        }),
        _buildSection("Kommande Cuper", kommandeCups, visibleKommande, (val) {
          setState(() => visibleKommande = val);
        }),
        _buildSection("Genomförda Cuper", genomfordaCups, visibleGenomforda,
            (val) {
          setState(() => visibleGenomforda = val);
        }),
        SizedBox(height: 24),
      ],
    );
  }

  Widget _buildSection(
      String title, List<Cup> cups, int visible, ValueChanged<int> updateVisible) {
    if (cups.isEmpty) return SizedBox.shrink();

    final displayCups = cups.take(visible).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 8),
          ...displayCups.map((cup) => CupCard(
                cup: cup,
                onTap: () => widget.onCupTap(cup),
              )),
          if (visible < cups.length)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                onPressed: () {
                  updateVisible((visible + 3).clamp(0, cups.length));
                },
                child: Text("Visa fler cuper (${cups.length - visible} kvar)"),
              ),
            ),
        ],
      ),
    );
  }
}
