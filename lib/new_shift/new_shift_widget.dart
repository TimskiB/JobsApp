import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NewShiftWidget extends StatefulWidget {
  NewShiftWidget({Key key}) : super(key: key);

  @override
  _NewShiftWidgetState createState() => _NewShiftWidgetState();
}

class _NewShiftWidgetState extends State<NewShiftWidget> {
  DateTime datePicked = DateTime.now();
  TextEditingController jobNameController;
  String startSelectorValue;
  String endSelectorValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    jobNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 44, 12, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFF1A1F24),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                        child: Icon(
                          Icons.close_rounded,
                          color: FlutterFlowTheme.tertiaryColor,
                          size: 24,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: Color(0xFF131619),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                          color: Color(0x5D000000),
                          offset: Offset(0, -2),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
                                child: Text(
                                  'Add Shift',
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFF6F5F4),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
                                child: Text(
                                  'Fill out the details below to add a new shift.',
                                  style: FlutterFlowTheme.subtitle1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: TextFormField(
                              controller: jobNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Job Name',
                                labelStyle: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF8B97A2),
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: 'Enter job name...',
                                hintStyle: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF8B97A2),
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF1A1F24),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF1A1F24),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xFF1A1F24),
                                prefixIcon: Icon(
                                  Icons.house_siding,
                                  color: Color(0xFF8B97A2),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.tertiaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: InkWell(
                              onTap: () async {
                                await DatePicker.showDatePicker(context,
                                    showTitleActions: true, onConfirm: (date) {
                                  setState(() => datePicked = date);
                                }, currentTime: DateTime.now());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.92,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1A1F24),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0xFF1A1F24),
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(7, 3, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.date_range_rounded,
                                        color: Color(0xFF8B97A2),
                                        size: 24,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 0, 0, 0),
                                        child: Text(
                                          'Choose Date',
                                          style: FlutterFlowTheme.bodyText2
                                              .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF8B97A2),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Start:',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF8B97A2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                FlutterFlowDropDown(
                                  initialOption: '6:00',
                                  options: [
                                    '5:00',
                                    '6:00',
                                    '7:00',
                                    '8:00',
                                    '9:00',
                                    '10:00',
                                    '11:00',
                                    '12:00',
                                    '13:00',
                                    '14:00',
                                    '15:00',
                                    '16:00',
                                    '17:00',
                                    '18:00',
                                    '19:00',
                                    '20:00',
                                    '21:00',
                                    '22:00'
                                  ],
                                  onChanged: (value) {
                                    setState(() => startSelectorValue = value);
                                  },
                                  width: 130,
                                  height: 40,
                                  textStyle:
                                      FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.tertiaryColor,
                                  ),
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 15,
                                  ),
                                  fillColor: Color(0xFF1A1F24),
                                  elevation: 5,
                                  borderColor: Color(0xFF1A1F24),
                                  borderWidth: 1,
                                  borderRadius: 5,
                                  margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  hidesUnderline: true,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'End:',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF8B97A2),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                FlutterFlowDropDown(
                                  initialOption: '15:00',
                                  options: [
                                    '13:00',
                                    '14:00',
                                    '15:00',
                                    '16:00',
                                    '17:00',
                                    '18:00',
                                    '19:00',
                                    '20:00',
                                    '22:00',
                                    '23:00',
                                    '00:00',
                                    '1:00'
                                  ],
                                  onChanged: (value) {
                                    setState(() => endSelectorValue = value);
                                  },
                                  width: 130,
                                  height: 40,
                                  textStyle:
                                      FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.tertiaryColor,
                                  ),
                                  icon: Icon(
                                    Icons.play_arrow_sharp,
                                    size: 15,
                                  ),
                                  fillColor: Color(0xFF1A1F24),
                                  elevation: 5,
                                  borderColor: Color(0xFF1A1F24),
                                  borderWidth: 1,
                                  borderRadius: 5,
                                  margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  hidesUnderline: true,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                  text: 'Cancel',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 50,
                                    color: Color(0xFF131619),
                                    textStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.tertiaryColor,
                                      fontSize: 16,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    final shiftsCreateData =
                                        createShiftsRecordData(
                                      job: jobNameController.text,
                                      date: datePicked,
                                      startHour: startSelectorValue,
                                      endHour: endSelectorValue,
                                    );
                                    await ShiftsRecord.collection
                                        .doc()
                                        .set(shiftsCreateData);
                                    Navigator.pop(context);
                                  },
                                  text: 'Create Shift',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 50,
                                    color: FlutterFlowTheme.primaryColor,
                                    textStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 8,
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
            )
          ],
        ),
      ),
    );
  }
}
