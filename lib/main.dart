import 'package:flutter/material.dart';
import 'package:jobs/home_page/home_page_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'financial/financial_widget.dart';
import 'home_page/home_page_widget.dart';
import 'schedule/schedule_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jobs',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NavBarPage(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Financial';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Financial': FinancialWidget(),
      'HomePage': HomePageWidget(),
      'Schedule': ScheduleWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.coins,
              color: Color(0xFF9E9E9E),
              size: 24,
            ),
            activeIcon: FaIcon(
              FontAwesomeIcons.coins,
              color: FlutterFlowTheme.primaryColor,
              size: 24,
            ),
            label: 'Financial',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.home,
              color: Color(0xFF9E9E9E),
              size: 24,
            ),
            activeIcon: Icon(
              Icons.home,
              color: FlutterFlowTheme.primaryColor,
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.calendarAlt,
              color: Color(0xFF9E9E9E),
              size: 24,
            ),
            activeIcon: FaIcon(
              FontAwesomeIcons.calendarAlt,
              color: FlutterFlowTheme.primaryColor,
              size: 24,
            ),
            label: 'Schedule',
          )
        ],
        backgroundColor: Color(0xFFF6F5F4),
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: Color(0xFF0A0A0A),
        unselectedItemColor: Color(0xFF2D2A2A),
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // Temporary fix for https://github.com/flutter/flutter/issues/84556
        selectedLabelStyle: const TextStyle(fontSize: 0.001),
        unselectedLabelStyle: const TextStyle(fontSize: 0.001),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
