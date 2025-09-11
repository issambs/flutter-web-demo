import 'package:flutter/material.dart';

class AppShell extends StatelessWidget {
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const AppShell({
    Key? key,
    required this.body,
    required this.selectedIndex,
    required this.onTabChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Header with logo + background
      appBar: AppBar(
        toolbarHeight: 120,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://cuponline.se/web/site/cuponline/images/bg_Top.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Image.network(
              'https://cuponline.se/web/site/cuponline/images/logo.gif',
              height: 60,
            ),
          ),
        ),
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTabChanged,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Sök Cup"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Beställ"),
          BottomNavigationBarItem(icon: Icon(Icons.support), label: "Support"),
          BottomNavigationBarItem(icon: Icon(Icons.admin_panel_settings), label: "Admin"),
        ],
      ),
    );
  }
}
