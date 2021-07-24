import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'financial_record.g.dart';

abstract class FinancialRecord
    implements Built<FinancialRecord, FinancialRecordBuilder> {
  static Serializer<FinancialRecord> get serializer =>
      _$financialRecordSerializer;

  @nullable
  double get income;

  @nullable
  double get outcome;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FinancialRecordBuilder builder) => builder
    ..income = 0.0
    ..outcome = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('financial');

  static Stream<FinancialRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FinancialRecord._();
  factory FinancialRecord([void Function(FinancialRecordBuilder) updates]) =
      _$FinancialRecord;

  static FinancialRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createFinancialRecordData({
  double income,
  double outcome,
}) =>
    serializers.toFirestore(
        FinancialRecord.serializer,
        FinancialRecord((f) => f
          ..income = income
          ..outcome = outcome));
