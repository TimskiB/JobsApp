import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionWidget extends StatefulWidget {
  TransactionWidget({Key key}) : super(key: key);

  @override
  _TransactionWidgetState createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
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
        List<TransactionsRecord> cardTransactionsRecordList = snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          return Container(
            height: 100,
            child: Center(
              child: Text('No results.'),
            ),
          );
        }
        final cardTransactionsRecord = cardTransactionsRecordList.first;
        return Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Color(0xFFF5F5F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cardTransactionsRecord.name,
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        AutoSizeText(
                          '₪${cardTransactionsRecord.price.toString()}',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            dateTimeFormat(
                                'relative', cardTransactionsRecord.createdAt),
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF8A65),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(1, 2, 1, 2),
                              child: Text(
                                cardTransactionsRecord.description,
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                ),
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
          ),
        );
      },
    );
  }
}
