import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FinancialWidget extends StatefulWidget {
  FinancialWidget({Key key}) : super(key: key);

  @override
  _FinancialWidgetState createState() => _FinancialWidgetState();
}

class _FinancialWidgetState extends State<FinancialWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
    );
  }
}
