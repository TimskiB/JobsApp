import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleWidget extends StatefulWidget {
  ScheduleWidget({Key key}) : super(key: key);

  @override
  _ScheduleWidgetState createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: FlutterFlowCalendar(
          color: FlutterFlowTheme.primaryColor,
          weekFormat: true,
          weekStartsMonday: false,
          onChange: (DateTimeRange newSelectedDate) {
            setState(() => calendarSelectedDay = newSelectedDate);
          },
          titleStyle: FlutterFlowTheme.title1.override(
            fontFamily: 'Poppins',
          ),
          dayOfWeekStyle: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Poppins',
          ),
          dateStyle: TextStyle(),
          selectedDateStyle: TextStyle(),
          inactiveDateStyle: TextStyle(),
        ),
      ),
    );
  }
}
