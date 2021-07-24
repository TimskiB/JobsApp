import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'shifts_record.g.dart';

abstract class ShiftsRecord
    implements Built<ShiftsRecord, ShiftsRecordBuilder> {
  static Serializer<ShiftsRecord> get serializer => _$shiftsRecordSerializer;

  @nullable
  String get job;

  @nullable
  double get description;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: 'start_hour')
  String get startHour;

  @nullable
  @BuiltValueField(wireName: 'end_hour')
  String get endHour;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ShiftsRecordBuilder builder) => builder
    ..job = ''
    ..description = 0.0
    ..startHour = ''
    ..endHour = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shifts');

  static Stream<ShiftsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ShiftsRecord._();
  factory ShiftsRecord([void Function(ShiftsRecordBuilder) updates]) =
      _$ShiftsRecord;

  static ShiftsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createShiftsRecordData({
  String job,
  double description,
  DateTime date,
  String startHour,
  String endHour,
}) =>
    serializers.toFirestore(
        ShiftsRecord.serializer,
        ShiftsRecord((s) => s
          ..job = job
          ..description = description
          ..date = date
          ..startHour = startHour
          ..endHour = endHour));
