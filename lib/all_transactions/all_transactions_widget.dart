import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AllTransactionsWidget extends StatefulWidget {
  AllTransactionsWidget({
    Key key,
    this.categoryName,
  }) : super(key: key);

  final String categoryName;

  @override
  _AllTransactionsWidgetState createState() => _AllTransactionsWidgetState();
}

class _AllTransactionsWidgetState extends State<AllTransactionsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TransactionsRecord>>(
      stream: queryTransactionsRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitWanderingCubes(
                color: FlutterFlowTheme.primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<TransactionsRecord> allTransactionsTransactionsRecordList =
            snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          return Container(
            height: 100,
            child: Center(
              child: Text('No results.'),
            ),
          );
        }
        final allTransactionsTransactionsRecord =
            allTransactionsTransactionsRecordList.first;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.tertiaryColor,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 24,
              ),
            ),
            title: Text(
              'All Transactions',
              style: FlutterFlowTheme.title2.override(
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
            child: StreamBuilder<List<TransactionsRecord>>(
              stream: queryTransactionsRecord(
                queryBuilder: (transactionsRecord) =>
                    transactionsRecord.orderBy('created_at', descending: true),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: SpinKitWanderingCubes(
                        color: FlutterFlowTheme.primaryColor,
                        size: 50,
                      ),
                    ),
                  );
                }
                List<TransactionsRecord> listViewTransactionsRecordList =
                    snapshot.data;
                // Customize what your widget looks like with no query results.
                if (snapshot.data.isEmpty) {
                  return Container(
                    height: 100,
                    child: Center(
                      child: Text('No results.'),
                    ),
                  );
                }
                return Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewTransactionsRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewTransactionsRecord =
                          listViewTransactionsRecordList[listViewIndex];
                      return StreamBuilder<List<TransactionsRecord>>(
                        stream: queryTransactionsRecord(
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitWanderingCubes(
                                  color: FlutterFlowTheme.primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<TransactionsRecord> cardTransactionsRecordList =
                              snapshot.data;
                          // Customize what your widget looks like with no query results.
                          if (snapshot.data.isEmpty) {
                            return Container(
                              height: 100,
                              child: Center(
                                child: Text('No results.'),
                              ),
                            );
                          }
                          final cardTransactionsRecord =
                              cardTransactionsRecordList.first;
                          return Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              width: 100,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      listViewTransactionsRecord.name,
                                      style: FlutterFlowTheme.title2.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Text(
                                      '₪${listViewTransactionsRecord.price.toString()}',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Container(
                                      width: 75,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFF8A65),
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(1, 2, 1, 2),
                                        child: Text(
                                          listViewTransactionsRecord
                                              .description,
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                      child: Text(
                                        dateTimeFormat(
                                            'relative',
                                            listViewTransactionsRecord
                                                .createdAt),
                                        style:
                                            FlutterFlowTheme.subtitle1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
