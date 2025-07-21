// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceDetailsResponse _$PlaceDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _PlaceDetailsResponse(
      htmlAttributions: (json['html_attributions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      result: PlaceDetails.fromJson(json['result'] as Map<String, dynamic>),
      status: $enumDecode(_$PlacesDetailsStatusEnumMap, json['status']),
      infoMessages: (json['info_messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlaceDetailsResponseToJson(
        _PlaceDetailsResponse instance) =>
    <String, dynamic>{
      'html_attributions': instance.htmlAttributions,
      'result': instance.result,
      'status': _$PlacesDetailsStatusEnumMap[instance.status]!,
      'info_messages': instance.infoMessages,
    };

const _$PlacesDetailsStatusEnumMap = {
  PlacesDetailsStatus.OK: 'OK',
  PlacesDetailsStatus.ZERO_RESULTS: 'ZERO_RESULTS',
  PlacesDetailsStatus.NOT_FOUND: 'NOT_FOUND',
  PlacesDetailsStatus.INVALID_REQUEST: 'INVALID_REQUEST',
  PlacesDetailsStatus.OVER_QUERY_LIMIT: 'OVER_QUERY_LIMIT',
  PlacesDetailsStatus.REQUEST_DENIED: 'REQUEST_DENIED',
  PlacesDetailsStatus.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
};

_PlaceDetails _$PlaceDetailsFromJson(Map<String, dynamic> json) =>
    _PlaceDetails(
      addressComponents: (json['address_components'] as List<dynamic>?)
          ?.map(
              (e) => PlaceAddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      adrAddress: json['adr_address'] as String?,
      businessStatus: json['business_status'] as String?,
      curbsidePickup: json['curbside_pickup'] as bool?,
      currentOpeningHours: json['current_opening_hours'] == null
          ? null
          : PlaceOpeningHours.fromJson(
              json['current_opening_hours'] as Map<String, dynamic>),
      delivery: json['delivery'] as bool?,
      dineIn: json['dine_in'] as bool?,
      editorialSummary: json['editorial_summary'] == null
          ? null
          : PlaceEditorialSummary.fromJson(
              json['editorial_summary'] as Map<String, dynamic>),
      formattedAddress: json['formatted_address'] as String?,
      formattedPhoneNumber: json['formatted_phone_number'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      icon: json['icon'] as String?,
      iconBackgroundColor: json['icon_background_color'] as String?,
      iconMaskBaseUri: json['icon_mask_base_uri'] as String?,
      internationalPhoneNumber: json['international_phone_number'] as String?,
      name: json['name'] as String?,
      openingHours: json['opening_hours'] == null
          ? null
          : PlaceOpeningHours.fromJson(
              json['opening_hours'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => PlacePhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      placeId: json['place_id'] as String?,
      plusCode: json['plus_code'] == null
          ? null
          : PlusCode.fromJson(json['plus_code'] as Map<String, dynamic>),
      priceLevel: (json['price_level'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      reservable: json['reservable'] as bool?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => PlaceReview.fromJson(e as Map<String, dynamic>))
          .toList(),
      secondaryOpeningHours: (json['secondary_opening_hours'] as List<dynamic>?)
          ?.map((e) => PlaceOpeningHours.fromJson(e as Map<String, dynamic>))
          .toList(),
      servesBeer: json['serves_beer'] as bool?,
      servesBreakfast: json['serves_breakfast'] as bool?,
      servesBrunch: json['serves_brunch'] as bool?,
      servesDinner: json['serves_dinner'] as bool?,
      servesLunch: json['serves_lunch'] as bool?,
      servesVegetarianFood: json['serves_vegetarian_food'] as bool?,
      servesWine: json['serves_wine'] as bool?,
      takeout: json['takeout'] as bool?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      userRatingsTotal: (json['user_ratings_total'] as num?)?.toInt(),
      utcOffset: (json['utc_offset'] as num?)?.toInt(),
      vicinity: json['vicinity'] as String?,
      website: json['website'] as String?,
      wheelchairAccessibleEntrance:
          json['wheelchair_accessible_entrance'] as bool?,
    );

Map<String, dynamic> _$PlaceDetailsToJson(_PlaceDetails instance) =>
    <String, dynamic>{
      'address_components': instance.addressComponents,
      'adr_address': instance.adrAddress,
      'business_status': instance.businessStatus,
      'curbside_pickup': instance.curbsidePickup,
      'current_opening_hours': instance.currentOpeningHours,
      'delivery': instance.delivery,
      'dine_in': instance.dineIn,
      'editorial_summary': instance.editorialSummary,
      'formatted_address': instance.formattedAddress,
      'formatted_phone_number': instance.formattedPhoneNumber,
      'geometry': instance.geometry,
      'icon': instance.icon,
      'icon_background_color': instance.iconBackgroundColor,
      'icon_mask_base_uri': instance.iconMaskBaseUri,
      'international_phone_number': instance.internationalPhoneNumber,
      'name': instance.name,
      'opening_hours': instance.openingHours,
      'photos': instance.photos,
      'place_id': instance.placeId,
      'plus_code': instance.plusCode,
      'price_level': instance.priceLevel,
      'rating': instance.rating,
      'reservable': instance.reservable,
      'reviews': instance.reviews,
      'secondary_opening_hours': instance.secondaryOpeningHours,
      'serves_beer': instance.servesBeer,
      'serves_breakfast': instance.servesBreakfast,
      'serves_brunch': instance.servesBrunch,
      'serves_dinner': instance.servesDinner,
      'serves_lunch': instance.servesLunch,
      'serves_vegetarian_food': instance.servesVegetarianFood,
      'serves_wine': instance.servesWine,
      'takeout': instance.takeout,
      'types': instance.types,
      'url': instance.url,
      'user_ratings_total': instance.userRatingsTotal,
      'utc_offset': instance.utcOffset,
      'vicinity': instance.vicinity,
      'website': instance.website,
      'wheelchair_accessible_entrance': instance.wheelchairAccessibleEntrance,
    };

_PlaceAddressComponent _$PlaceAddressComponentFromJson(
        Map<String, dynamic> json) =>
    _PlaceAddressComponent(
      longName: json['long_name'] as String,
      shortName: json['short_name'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PlaceAddressComponentToJson(
        _PlaceAddressComponent instance) =>
    <String, dynamic>{
      'long_name': instance.longName,
      'short_name': instance.shortName,
      'types': instance.types,
    };

_PlaceEditorialSummary _$PlaceEditorialSummaryFromJson(
        Map<String, dynamic> json) =>
    _PlaceEditorialSummary(
      language: json['language'] as String?,
      overview: json['overview'] as String?,
    );

Map<String, dynamic> _$PlaceEditorialSummaryToJson(
        _PlaceEditorialSummary instance) =>
    <String, dynamic>{
      'language': instance.language,
      'overview': instance.overview,
    };

_Geometry _$GeometryFromJson(Map<String, dynamic> json) => _Geometry(
      location:
          LatLngLiteral.fromJson(json['location'] as Map<String, dynamic>),
      viewport: Bounds.fromJson(json['viewport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeometryToJson(_Geometry instance) => <String, dynamic>{
      'location': instance.location,
      'viewport': instance.viewport,
    };

_LatLngLiteral _$LatLngLiteralFromJson(Map<String, dynamic> json) =>
    _LatLngLiteral(
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$LatLngLiteralToJson(_LatLngLiteral instance) =>
    <String, dynamic>{
      'lat': instance.latitude,
      'lng': instance.longitude,
    };

_Bounds _$BoundsFromJson(Map<String, dynamic> json) => _Bounds(
      northeast:
          LatLngLiteral.fromJson(json['northeast'] as Map<String, dynamic>),
      southwest:
          LatLngLiteral.fromJson(json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoundsToJson(_Bounds instance) => <String, dynamic>{
      'northeast': instance.northeast,
      'southwest': instance.southwest,
    };

_PlaceOpeningHours _$PlaceOpeningHoursFromJson(Map<String, dynamic> json) =>
    _PlaceOpeningHours(
      openNow: json['open_now'] as bool?,
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) =>
              PlaceOpeningHoursPeriod.fromJson(e as Map<String, dynamic>))
          .toList(),
      specialDays: (json['special_days'] as List<dynamic>?)
          ?.map((e) => PlaceSpecialDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String?,
      weekdayText: json['weekday_text'] as String?,
    );

Map<String, dynamic> _$PlaceOpeningHoursToJson(_PlaceOpeningHours instance) =>
    <String, dynamic>{
      'open_now': instance.openNow,
      'periods': instance.periods,
      'special_days': instance.specialDays,
      'type': instance.type,
      'weekday_text': instance.weekdayText,
    };

_PlaceOpeningHoursPeriod _$PlaceOpeningHoursPeriodFromJson(
        Map<String, dynamic> json) =>
    _PlaceOpeningHoursPeriod(
      open: PlaceOpeningHoursPeriodDetail.fromJson(
          json['open'] as Map<String, dynamic>),
      close: json['close'] == null
          ? null
          : PlaceOpeningHoursPeriodDetail.fromJson(
              json['close'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlaceOpeningHoursPeriodToJson(
        _PlaceOpeningHoursPeriod instance) =>
    <String, dynamic>{
      'open': instance.open,
      'close': instance.close,
    };

_PlaceSpecialDay _$PlaceSpecialDayFromJson(Map<String, dynamic> json) =>
    _PlaceSpecialDay(
      date: json['date'] as String?,
      exceptionalHours: json['exceptional_hours'] as bool?,
    );

Map<String, dynamic> _$PlaceSpecialDayToJson(_PlaceSpecialDay instance) =>
    <String, dynamic>{
      'date': instance.date,
      'exceptional_hours': instance.exceptionalHours,
    };

_PlaceOpeningHoursPeriodDetail _$PlaceOpeningHoursPeriodDetailFromJson(
        Map<String, dynamic> json) =>
    _PlaceOpeningHoursPeriodDetail(
      day: (json['day'] as num).toInt(),
      time: json['time'] as String,
      date: json['date'] as String?,
      truncated: json['truncated'] as bool?,
    );

Map<String, dynamic> _$PlaceOpeningHoursPeriodDetailToJson(
        _PlaceOpeningHoursPeriodDetail instance) =>
    <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'date': instance.date,
      'truncated': instance.truncated,
    };

_PlacePhoto _$PlacePhotoFromJson(Map<String, dynamic> json) => _PlacePhoto(
      height: json['height'] as num,
      width: json['width'] as num,
      htmlAttributions: (json['html_attributions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      photoReference: json['photo_reference'] as String,
    );

Map<String, dynamic> _$PlacePhotoToJson(_PlacePhoto instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'html_attributions': instance.htmlAttributions,
      'photo_reference': instance.photoReference,
    };

_PlusCode _$PlusCodeFromJson(Map<String, dynamic> json) => _PlusCode(
      globalCode: json['global_code'] as String,
      compoundCode: json['compound_code'] as String?,
    );

Map<String, dynamic> _$PlusCodeToJson(_PlusCode instance) => <String, dynamic>{
      'global_code': instance.globalCode,
      'compound_code': instance.compoundCode,
    };

_PlaceReview _$PlaceReviewFromJson(Map<String, dynamic> json) => _PlaceReview(
      authorName: json['author_name'] as String,
      rating: (json['rating'] as num).toInt(),
      relativeTimeDescription: json['relative_time_description'] as String,
      time: (json['time'] as num).toInt(),
      authorUrl: json['author_url'] as String?,
      language: json['language'] as String?,
      originalLanguage: json['original_language'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
      text: json['text'] as String?,
      translated: json['translated'] as bool?,
    );

Map<String, dynamic> _$PlaceReviewToJson(_PlaceReview instance) =>
    <String, dynamic>{
      'author_name': instance.authorName,
      'rating': instance.rating,
      'relative_time_description': instance.relativeTimeDescription,
      'time': instance.time,
      'author_url': instance.authorUrl,
      'language': instance.language,
      'original_language': instance.originalLanguage,
      'profile_photo_url': instance.profilePhotoUrl,
      'text': instance.text,
      'translated': instance.translated,
    };
