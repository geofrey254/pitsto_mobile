import 'package:flutter/material.dart';
import 'package:pitsto_app/screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
        bottomNavigationBar: NavigationBar(destinations: [
          NavigationDestination(icon: Icon(Icons.home, color: Color(0xFF0A1B33),), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.drive_eta, color: Color(0xFF0A1B33),), label: 'Vehicle'),
          NavigationDestination(icon: Icon(Icons.document_scanner_rounded, color: Color(0xFF0A1B33),), label: 'Documents'),
          NavigationDestination(icon: Icon(Icons.person, color: Color(0xFF0A1B33),), label: 'Profile'),

        ],
        onDestinationSelected: (int index){
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
        ),
    );
  }
}
