import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                    icon: Icon(
                      Icons.apps,
                      color: Colors.black,
                      size: 30,
                    ),
                    iconSize: 30,
                  ),
                  IconButton(
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.bullseye,
                      color: Colors.black,
                      size: 30,
                    ),
                    iconSize: 30,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(132, 10, 132, 0),
                child: Container(
                  width: 50,
                  height: 86,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.rectangle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://picsum.photos/seed/870/600',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'You earned',
                    style: FlutterFlowTheme.title1.override(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment(0, 0),
                    child: Text(
                      '₪',
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Text(
                      '[Payment]',
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Text(
                      ' this month!',
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'Shifts',
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: '+ Add shift',
                        options: FFButtonOptions(
                          width: 120,
                          height: 35,
                          color: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFDCFCEF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '[Shift Title]',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1B694A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: Text(
                                    '[Shift Payment]',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF1B694A),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.clock,
                                        color: Color(0xFF1B694A),
                                        size: 17,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text(
                                          '09:00 - 10:00',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF1B694A),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
