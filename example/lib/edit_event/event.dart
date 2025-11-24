import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
abstract class EventModel with _$EventModel {
  const factory EventModel({
    required String id,
    required String title,
    required DateTime start,
    required DateTime finish,
    AddressModel? address,
  }) = _EventModel;
}

@freezed
abstract class AddressModel with _$AddressModel {
  @Assert('latitude >= -90 && latitude <= 90', 'invalid latitude')
  @Assert('longitude >= -180 && longitude <= 180', 'invalid longitude')
  factory AddressModel({
    required String name,
    required double latitude,
    required double longitude,
  }) = _AddressModel;
}
