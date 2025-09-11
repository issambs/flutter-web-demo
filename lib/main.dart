import 'package:flutter/material.dart'; 
import 'pages/home_page.dart';
import 'pages/search_cup_page.dart';
import 'pages/order_page.dart';
import 'pages/support_page.dart';
import 'pages/admin_page.dart';
import 'pages/cup_detail_page.dart';
import 'widgets/app_shell.dart';
import 'models/cup.dart';

void main() => runApp(CupOnlineApp());

class CupOnlineApp extends StatefulWidget {
  @override
  _CupOnlineAppState createState() => _CupOnlineAppState();
}

class _CupOnlineAppState extends State<CupOnlineApp> {
  int _selectedIndex = 0;
  Cup? _selectedCup; // For showing CupDetailPage

  void _onTabChanged(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedCup = null; // Reset when switching tab
    });
  }

  void _onCupSelected(Cup cup) {
    setState(() {
      _selectedCup = cup;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      HomePage(onCupTap: _onCupSelected),
      SearchCupPage(onCupTap: _onCupSelected),
      OrderPage(),
      SupportPage(),
      AdminPage(),
    ];

    Widget body = _selectedCup != null
        ? CupDetailPage(cup: _selectedCup!, onBack: () => setState(() => _selectedCup = null))
        : _pages[_selectedIndex];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppShell(
        body: body,
        selectedIndex: _selectedIndex,
        onTabChanged: _onTabChanged,
      ),
    );
  }
}
