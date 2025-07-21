// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceDetailsResponse {
  /// May contain a set of attributions about this listing which must be
  /// displayed to the user (some listings may not have attribution).
  @JsonKey(name: 'html_attributions')
  List<String> get htmlAttributions;

  /// Contains the detailed information about the place requested.
  PlaceDetails get result;

  /// Contains the status of the request, and may contain debugging
  /// information to help you track down why the request failed.
  PlacesDetailsStatus
      get status; // When the service returns additional information about the request
// specification, there may be an additional info_messages field within the
// response object. This field is only returned for successful requests.
// It may not always be returned, and its content is subject to change.
  @JsonKey(name: 'info_messages')
  List<String>? get infoMessages;

  /// Create a copy of PlaceDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceDetailsResponseCopyWith<PlaceDetailsResponse> get copyWith =>
      _$PlaceDetailsResponseCopyWithImpl<PlaceDetailsResponse>(
          this as PlaceDetailsResponse, _$identity);

  /// Serializes this PlaceDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.htmlAttributions, htmlAttributions) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.infoMessages, infoMessages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(htmlAttributions),
      result,
      status,
      const DeepCollectionEquality().hash(infoMessages));

  @override
  String toString() {
    return 'PlaceDetailsResponse(htmlAttributions: $htmlAttributions, result: $result, status: $status, infoMessages: $infoMessages)';
  }
}

/// @nodoc
abstract mixin class $PlaceDetailsResponseCopyWith<$Res> {
  factory $PlaceDetailsResponseCopyWith(PlaceDetailsResponse value,
          $Res Function(PlaceDetailsResponse) _then) =
      _$PlaceDetailsResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'html_attributions') List<String> htmlAttributions,
      PlaceDetails result,
      PlacesDetailsStatus status,
      @JsonKey(name: 'info_messages') List<String>? infoMessages});

  $PlaceDetailsCopyWith<$Res> get result;
}

/// @nodoc
class _$PlaceDetailsResponseCopyWithImpl<$Res>
    implements $PlaceDetailsResponseCopyWith<$Res> {
  _$PlaceDetailsResponseCopyWithImpl(this._self, this._then);

  final PlaceDetailsResponse _self;
  final $Res Function(PlaceDetailsResponse) _then;

  /// Create a copy of PlaceDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? htmlAttributions = null,
    Object? result = null,
    Object? status = null,
    Object? infoMessages = freezed,
  }) {
    return _then(_self.copyWith(
      htmlAttributions: null == htmlAttributions
          ? _self.htmlAttributions
          : htmlAttributions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as PlaceDetails,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlacesDetailsStatus,
      infoMessages: freezed == infoMessages
          ? _self.infoMessages
          : infoMessages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  /// Create a copy of PlaceDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceDetailsCopyWith<$Res> get result {
    return $PlaceDetailsCopyWith<$Res>(_self.result, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceDetailsResponse extends PlaceDetailsResponse {
  const _PlaceDetailsResponse(
      {@JsonKey(name: 'html_attributions')
      required final List<String> htmlAttributions,
      required this.result,
      required this.status,
      @JsonKey(name: 'info_messages') final List<String>? infoMessages})
      : _htmlAttributions = htmlAttributions,
        _infoMessages = infoMessages,
        super._();
  factory _PlaceDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsResponseFromJson(json);

  /// May contain a set of attributions about this listing which must be
  /// displayed to the user (some listings may not have attribution).
  final List<String> _htmlAttributions;

  /// May contain a set of attributions about this listing which must be
  /// displayed to the user (some listings may not have attribution).
  @override
  @JsonKey(name: 'html_attributions')
  List<String> get htmlAttributions {
    if (_htmlAttributions is EqualUnmodifiableListView)
      return _htmlAttributions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_htmlAttributions);
  }

  /// Contains the detailed information about the place requested.
  @override
  final PlaceDetails result;

  /// Contains the status of the request, and may contain debugging
  /// information to help you track down why the request failed.
  @override
  final PlacesDetailsStatus status;
// When the service returns additional information about the request
// specification, there may be an additional info_messages field within the
// response object. This field is only returned for successful requests.
// It may not always be returned, and its content is subject to change.
  final List<String>? _infoMessages;
// When the service returns additional information about the request
// specification, there may be an additional info_messages field within the
// response object. This field is only returned for successful requests.
// It may not always be returned, and its content is subject to change.
  @override
  @JsonKey(name: 'info_messages')
  List<String>? get infoMessages {
    final value = _infoMessages;
    if (value == null) return null;
    if (_infoMessages is EqualUnmodifiableListView) return _infoMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PlaceDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceDetailsResponseCopyWith<_PlaceDetailsResponse> get copyWith =>
      __$PlaceDetailsResponseCopyWithImpl<_PlaceDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceDetailsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other._htmlAttributions, _htmlAttributions) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._infoMessages, _infoMessages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_htmlAttributions),
      result,
      status,
      const DeepCollectionEquality().hash(_infoMessages));

  @override
  String toString() {
    return 'PlaceDetailsResponse(htmlAttributions: $htmlAttributions, result: $result, status: $status, infoMessages: $infoMessages)';
  }
}

/// @nodoc
abstract mixin class _$PlaceDetailsResponseCopyWith<$Res>
    implements $PlaceDetailsResponseCopyWith<$Res> {
  factory _$PlaceDetailsResponseCopyWith(_PlaceDetailsResponse value,
          $Res Function(_PlaceDetailsResponse) _then) =
      __$PlaceDetailsResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'html_attributions') List<String> htmlAttributions,
      PlaceDetails result,
      PlacesDetailsStatus status,
      @JsonKey(name: 'info_messages') List<String>? infoMessages});

  @override
  $PlaceDetailsCopyWith<$Res> get result;
}

/// @nodoc
class __$PlaceDetailsResponseCopyWithImpl<$Res>
    implements _$PlaceDetailsResponseCopyWith<$Res> {
  __$PlaceDetailsResponseCopyWithImpl(this._self, this._then);

  final _PlaceDetailsResponse _self;
  final $Res Function(_PlaceDetailsResponse) _then;

  /// Create a copy of PlaceDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? htmlAttributions = null,
    Object? result = null,
    Object? status = null,
    Object? infoMessages = freezed,
  }) {
    return _then(_PlaceDetailsResponse(
      htmlAttributions: null == htmlAttributions
          ? _self._htmlAttributions
          : htmlAttributions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as PlaceDetails,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlacesDetailsStatus,
      infoMessages: freezed == infoMessages
          ? _self._infoMessages
          : infoMessages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  /// Create a copy of PlaceDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceDetailsCopyWith<$Res> get result {
    return $PlaceDetailsCopyWith<$Res>(_self.result, (value) {
      return _then(_self.copyWith(result: value));
    });
  }
}

/// @nodoc
mixin _$PlaceDetails {
  /// An array containing the separate components applicable to this address.
  @JsonKey(name: 'address_components')
  List<PlaceAddressComponent>? get addressComponents;

  /// A representation of the place's address in the adr microformat.
  /// See : https://microformats.org/wiki/adr
  @JsonKey(name: 'adr_address')
  String? get adrAddress;

  /// Indicates the operational status of the place, if it is a business.
  /// If no data exists, business_status is not returned.
  ///
  /// The allowed values include: OPERATIONAL, CLOSED_TEMPORARILY, and CLOSED_PERMANENTLY
  @JsonKey(name: 'business_status')
  String? get businessStatus;

  /// Specifies if the business supports curbside pickup.
  @JsonKey(name: 'curbside_pickup')
  bool? get curbsidePickup;

  /// Contains the hours of operation for the next seven days (including
  /// today). The time period starts at midnight on the date of the request
  /// and ends at 11:59 pm six days later. This field includes
  /// the special_days subfield of all hours, set for dates that have
  /// exceptional hours.
  @JsonKey(name: 'current_opening_hours')
  PlaceOpeningHours? get currentOpeningHours;

  /// Specifies if the business supports delivery.
  bool? get delivery;

  /// Specifies if the business supports indoor or outdoor seating options.
  @JsonKey(name: 'dine_in')
  bool? get dineIn;

  /// Contains a summary of the place. A summary is comprised of a textual
  /// overview, and also includes the language code for these if applicable.
  /// Summary text must be presented as-is and can not be modified or altered.
  @JsonKey(name: 'editorial_summary')
  PlaceEditorialSummary? get editorialSummary;

  /// A string containing the human-readable address of this place.
  ///
  /// Often this address is equivalent to the postal address. Note that some
  /// countries, such as the United Kingdom, do not allow distribution of true
  /// postal addresses due to licensing restrictions.
  ///
  /// The formatted address is logically composed of one or more address
  /// components. For example, the address "111 8th Avenue, New York, NY"
  /// consists of the following components: "111" (the street number),
  /// "8th Avenue" (the route), "New York" (the city) and "NY" (the US state).
  ///
  /// Do not parse the formatted address programmatically. Instead you should
  /// use the individual address components, which the API response includes
  /// in addition to the formatted address field.
  @JsonKey(name: 'formatted_address')
  String? get formattedAddress;

  /// Contains the place's phone number in its local format.
  @JsonKey(name: 'formatted_phone_number')
  String? get formattedPhoneNumber;

  /// Contains the location and viewport for the location.
  Geometry? get geometry;

  /// Contains the URL of a suggested icon which may be displayed to the user
  /// when indicating this result on a map.
  String? get icon;

  /// Contains the default HEX color code for the place's category.
  @JsonKey(name: 'icon_background_color')
  String? get iconBackgroundColor;

  /// Contains the URL of a recommended icon, minus the .svg or .png file
  /// type extension.
  @JsonKey(name: 'icon_mask_base_uri')
  String? get iconMaskBaseUri;

  /// Contains the place's phone number in international format.
  /// International format includes the country code, and is prefixed with
  /// the plus, +, sign. For example, the international_phone_number for
  /// Google's Sydney, Australia office is +61 2 9374 4000.
  @JsonKey(name: 'international_phone_number')
  String? get internationalPhoneNumber;

  /// Contains the human-readable name for the returned result. For
  /// establishment results, this is usually the canonicalized business name.
  String? get name;

  /// Contains the regular hours of operation.
  @JsonKey(name: 'opening_hours')
  PlaceOpeningHours? get openingHours;

  /// An array of photo objects, each containing a reference to an image.
  /// A request may return up to ten photos. More information about place
  /// photos and how you can use the images in your application can be found
  /// in the Place Photos documentation.
  List<PlacePhoto>? get photos;

  /// A textual identifier that uniquely identifies a place.
  @JsonKey(name: 'place_id')
  String? get placeId;

  /// An encoded location reference, derived from latitude and longitude
  /// coordinates, that represents an area: 1/8000th of a degree by
  /// 1/8000th of a degree (about 14m x 14m at the equator) or smaller.
  /// Plus codes can be used as a replacement for street addresses in places
  /// where they do not exist (where buildings are not numbered or streets
  /// are not named).
  @JsonKey(name: 'plus_code')
  PlusCode? get plusCode;

  /// The price level of the place, on a scale of 0 to 4. The exact amount
  /// indicated by a specific value will vary from region to region.
  /// Price levels are interpreted as follows:
  /// - 0 Free
  /// - 1 Inexpensive
  /// - 2 Moderate
  /// - 3 Expensive
  /// - 4 Very Expensive
  @JsonKey(name: 'price_level')
  int? get priceLevel;

  /// Contains the place's rating, from 1.0 to 5.0, based on aggregated user
  /// reviews.
  double? get rating;

  /// Specifies if the place supports reservations.
  bool? get reservable;

  /// A JSON array of up to five reviews. By default, the reviews are
  /// sorted in order of relevance. Use the reviews_sort request parameter to
  /// control sorting.
  /// - For most_relevant (default), reviews are sorted by relevance; the
  /// service will bias the results to return reviews originally written in
  /// the preferred language.
  /// - For newest, reviews are sorted in chronological order; the preferred
  /// language does not affect the sort order.
  ///
  /// Google recommends indicating to users whether results are ordered by
  /// most_relevant or newest.
  List<PlaceReview>? get reviews;

  /// Contains an array of entries for the next seven days including
  /// information about secondary hours of a business. Secondary hours are
  /// different from a business's main hours. For example, a restaurant can
  /// specify drive through hours or delivery hours as its secondary hours.
  /// This field populates the type subfield, which draws from a predefined
  /// list of opening hours types (such as DRIVE_THROUGH, PICKUP, or TAKEOUT)
  /// based on the types of the place. This field includes the special_days
  /// subfield of all hours, set for dates that have exceptional hours.
  @JsonKey(name: 'secondary_opening_hours')
  List<PlaceOpeningHours>? get secondaryOpeningHours;

  /// Specifies if the place serves beer.
  @JsonKey(name: 'serves_beer')
  bool? get servesBeer;

  /// Specifies if the place serves breakfast.
  @JsonKey(name: 'serves_breakfast')
  bool? get servesBreakfast;

  /// Specifies if the place serves brunch.
  @JsonKey(name: 'serves_brunch')
  bool? get servesBrunch;

  /// Specifies if the place serves dinner.
  @JsonKey(name: 'serves_dinner')
  bool? get servesDinner;

  /// Specifies if the place serves lunch.
  @JsonKey(name: 'serves_lunch')
  bool? get servesLunch;

  /// Specifies if the place serves vegetarian food.
  @JsonKey(name: 'serves_vegetarian_food')
  bool? get servesVegetarianFood;

  /// Specifies if the place serves wine.
  @JsonKey(name: 'serves_wine')
  bool? get servesWine;

  /// Specifies if the business supports takeout.
  bool? get takeout;

  /// Contains an array of feature types describing the given result.
  /// See : https://developers.google.com/maps/documentation/places/web-service/legacy/supported_types#table2
  List<String>? get types;

  /// Contains the URL of the official Google page for this place.
  /// This will be the Google-owned page that contains the best available
  /// information about the place. Applications must link to or embed this
  /// page on any screen that shows detailed results about the place to the
  /// user.
  String? get url;

  /// The total number of reviews, with or without text, for this place.
  @JsonKey(name: 'user_ratings_total')
  int? get userRatingsTotal;

  /// Contains the number of minutes this place’s current timezone is offset
  /// from UTC. For example, for places in Sydney, Australia during daylight
  /// saving time this would be 660 (+11 hours from UTC), and for places in
  /// California outside of daylight saving time this would be -480 (-8 hours
  /// from UTC).
  @JsonKey(name: 'utc_offset')
  int? get utcOffset;

  /// For establishment (types:["establishment", ...]) results only, the
  /// vicinity field contains a simplified address for the place, including
  /// the street name, street number, and locality, but not the
  /// province/state, postal code, or country.
  ///
  /// For all other results, the vicinity field contains the name of the
  /// narrowest political (types:["political", ...]) feature that is present
  /// in the address of the result.
  ///
  /// This content is meant to be read as-is. Do not programmatically parse
  /// the formatted address.
  String? get vicinity;

  /// The authoritative website for this place, such as a business' homepage.
  String? get website;

  /// Specifies if the place has an entrance that is wheelchair-accessible.
  @JsonKey(name: 'wheelchair_accessible_entrance')
  bool? get wheelchairAccessibleEntrance;

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceDetailsCopyWith<PlaceDetails> get copyWith =>
      _$PlaceDetailsCopyWithImpl<PlaceDetails>(
          this as PlaceDetails, _$identity);

  /// Serializes this PlaceDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceDetails &&
            const DeepCollectionEquality()
                .equals(other.addressComponents, addressComponents) &&
            (identical(other.adrAddress, adrAddress) ||
                other.adrAddress == adrAddress) &&
            (identical(other.businessStatus, businessStatus) ||
                other.businessStatus == businessStatus) &&
            (identical(other.curbsidePickup, curbsidePickup) ||
                other.curbsidePickup == curbsidePickup) &&
            (identical(other.currentOpeningHours, currentOpeningHours) ||
                other.currentOpeningHours == currentOpeningHours) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.dineIn, dineIn) || other.dineIn == dineIn) &&
            (identical(other.editorialSummary, editorialSummary) ||
                other.editorialSummary == editorialSummary) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.formattedPhoneNumber, formattedPhoneNumber) ||
                other.formattedPhoneNumber == formattedPhoneNumber) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconBackgroundColor, iconBackgroundColor) ||
                other.iconBackgroundColor == iconBackgroundColor) &&
            (identical(other.iconMaskBaseUri, iconMaskBaseUri) ||
                other.iconMaskBaseUri == iconMaskBaseUri) &&
            (identical(
                    other.internationalPhoneNumber, internationalPhoneNumber) ||
                other.internationalPhoneNumber == internationalPhoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.plusCode, plusCode) ||
                other.plusCode == plusCode) &&
            (identical(other.priceLevel, priceLevel) ||
                other.priceLevel == priceLevel) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reservable, reservable) ||
                other.reservable == reservable) &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            const DeepCollectionEquality()
                .equals(other.secondaryOpeningHours, secondaryOpeningHours) &&
            (identical(other.servesBeer, servesBeer) ||
                other.servesBeer == servesBeer) &&
            (identical(other.servesBreakfast, servesBreakfast) ||
                other.servesBreakfast == servesBreakfast) &&
            (identical(other.servesBrunch, servesBrunch) ||
                other.servesBrunch == servesBrunch) &&
            (identical(other.servesDinner, servesDinner) ||
                other.servesDinner == servesDinner) &&
            (identical(other.servesLunch, servesLunch) ||
                other.servesLunch == servesLunch) &&
            (identical(other.servesVegetarianFood, servesVegetarianFood) ||
                other.servesVegetarianFood == servesVegetarianFood) &&
            (identical(other.servesWine, servesWine) ||
                other.servesWine == servesWine) &&
            (identical(other.takeout, takeout) || other.takeout == takeout) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.userRatingsTotal, userRatingsTotal) ||
                other.userRatingsTotal == userRatingsTotal) &&
            (identical(other.utcOffset, utcOffset) ||
                other.utcOffset == utcOffset) &&
            (identical(other.vicinity, vicinity) ||
                other.vicinity == vicinity) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.wheelchairAccessibleEntrance,
                    wheelchairAccessibleEntrance) ||
                other.wheelchairAccessibleEntrance ==
                    wheelchairAccessibleEntrance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(addressComponents),
        adrAddress,
        businessStatus,
        curbsidePickup,
        currentOpeningHours,
        delivery,
        dineIn,
        editorialSummary,
        formattedAddress,
        formattedPhoneNumber,
        geometry,
        icon,
        iconBackgroundColor,
        iconMaskBaseUri,
        internationalPhoneNumber,
        name,
        openingHours,
        const DeepCollectionEquality().hash(photos),
        placeId,
        plusCode,
        priceLevel,
        rating,
        reservable,
        const DeepCollectionEquality().hash(reviews),
        const DeepCollectionEquality().hash(secondaryOpeningHours),
        servesBeer,
        servesBreakfast,
        servesBrunch,
        servesDinner,
        servesLunch,
        servesVegetarianFood,
        servesWine,
        takeout,
        const DeepCollectionEquality().hash(types),
        url,
        userRatingsTotal,
        utcOffset,
        vicinity,
        website,
        wheelchairAccessibleEntrance
      ]);

  @override
  String toString() {
    return 'PlaceDetails(addressComponents: $addressComponents, adrAddress: $adrAddress, businessStatus: $businessStatus, curbsidePickup: $curbsidePickup, currentOpeningHours: $currentOpeningHours, delivery: $delivery, dineIn: $dineIn, editorialSummary: $editorialSummary, formattedAddress: $formattedAddress, formattedPhoneNumber: $formattedPhoneNumber, geometry: $geometry, icon: $icon, iconBackgroundColor: $iconBackgroundColor, iconMaskBaseUri: $iconMaskBaseUri, internationalPhoneNumber: $internationalPhoneNumber, name: $name, openingHours: $openingHours, photos: $photos, placeId: $placeId, plusCode: $plusCode, priceLevel: $priceLevel, rating: $rating, reservable: $reservable, reviews: $reviews, secondaryOpeningHours: $secondaryOpeningHours, servesBeer: $servesBeer, servesBreakfast: $servesBreakfast, servesBrunch: $servesBrunch, servesDinner: $servesDinner, servesLunch: $servesLunch, servesVegetarianFood: $servesVegetarianFood, servesWine: $servesWine, takeout: $takeout, types: $types, url: $url, userRatingsTotal: $userRatingsTotal, utcOffset: $utcOffset, vicinity: $vicinity, website: $website, wheelchairAccessibleEntrance: $wheelchairAccessibleEntrance)';
  }
}

/// @nodoc
abstract mixin class $PlaceDetailsCopyWith<$Res> {
  factory $PlaceDetailsCopyWith(
          PlaceDetails value, $Res Function(PlaceDetails) _then) =
      _$PlaceDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<PlaceAddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') String? adrAddress,
      @JsonKey(name: 'business_status') String? businessStatus,
      @JsonKey(name: 'curbside_pickup') bool? curbsidePickup,
      @JsonKey(name: 'current_opening_hours')
      PlaceOpeningHours? currentOpeningHours,
      bool? delivery,
      @JsonKey(name: 'dine_in') bool? dineIn,
      @JsonKey(name: 'editorial_summary')
      PlaceEditorialSummary? editorialSummary,
      @JsonKey(name: 'formatted_address') String? formattedAddress,
      @JsonKey(name: 'formatted_phone_number') String? formattedPhoneNumber,
      Geometry? geometry,
      String? icon,
      @JsonKey(name: 'icon_background_color') String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') String? iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
      String? internationalPhoneNumber,
      String? name,
      @JsonKey(name: 'opening_hours') PlaceOpeningHours? openingHours,
      List<PlacePhoto>? photos,
      @JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'plus_code') PlusCode? plusCode,
      @JsonKey(name: 'price_level') int? priceLevel,
      double? rating,
      bool? reservable,
      List<PlaceReview>? reviews,
      @JsonKey(name: 'secondary_opening_hours')
      List<PlaceOpeningHours>? secondaryOpeningHours,
      @JsonKey(name: 'serves_beer') bool? servesBeer,
      @JsonKey(name: 'serves_breakfast') bool? servesBreakfast,
      @JsonKey(name: 'serves_brunch') bool? servesBrunch,
      @JsonKey(name: 'serves_dinner') bool? servesDinner,
      @JsonKey(name: 'serves_lunch') bool? servesLunch,
      @JsonKey(name: 'serves_vegetarian_food') bool? servesVegetarianFood,
      @JsonKey(name: 'serves_wine') bool? servesWine,
      bool? takeout,
      List<String>? types,
      String? url,
      @JsonKey(name: 'user_ratings_total') int? userRatingsTotal,
      @JsonKey(name: 'utc_offset') int? utcOffset,
      String? vicinity,
      String? website,
      @JsonKey(name: 'wheelchair_accessible_entrance')
      bool? wheelchairAccessibleEntrance});

  $PlaceOpeningHoursCopyWith<$Res>? get currentOpeningHours;
  $PlaceEditorialSummaryCopyWith<$Res>? get editorialSummary;
  $GeometryCopyWith<$Res>? get geometry;
  $PlaceOpeningHoursCopyWith<$Res>? get openingHours;
  $PlusCodeCopyWith<$Res>? get plusCode;
}

/// @nodoc
class _$PlaceDetailsCopyWithImpl<$Res> implements $PlaceDetailsCopyWith<$Res> {
  _$PlaceDetailsCopyWithImpl(this._self, this._then);

  final PlaceDetails _self;
  final $Res Function(PlaceDetails) _then;

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponents = freezed,
    Object? adrAddress = freezed,
    Object? businessStatus = freezed,
    Object? curbsidePickup = freezed,
    Object? currentOpeningHours = freezed,
    Object? delivery = freezed,
    Object? dineIn = freezed,
    Object? editorialSummary = freezed,
    Object? formattedAddress = freezed,
    Object? formattedPhoneNumber = freezed,
    Object? geometry = freezed,
    Object? icon = freezed,
    Object? iconBackgroundColor = freezed,
    Object? iconMaskBaseUri = freezed,
    Object? internationalPhoneNumber = freezed,
    Object? name = freezed,
    Object? openingHours = freezed,
    Object? photos = freezed,
    Object? placeId = freezed,
    Object? plusCode = freezed,
    Object? priceLevel = freezed,
    Object? rating = freezed,
    Object? reservable = freezed,
    Object? reviews = freezed,
    Object? secondaryOpeningHours = freezed,
    Object? servesBeer = freezed,
    Object? servesBreakfast = freezed,
    Object? servesBrunch = freezed,
    Object? servesDinner = freezed,
    Object? servesLunch = freezed,
    Object? servesVegetarianFood = freezed,
    Object? servesWine = freezed,
    Object? takeout = freezed,
    Object? types = freezed,
    Object? url = freezed,
    Object? userRatingsTotal = freezed,
    Object? utcOffset = freezed,
    Object? vicinity = freezed,
    Object? website = freezed,
    Object? wheelchairAccessibleEntrance = freezed,
  }) {
    return _then(_self.copyWith(
      addressComponents: freezed == addressComponents
          ? _self.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<PlaceAddressComponent>?,
      adrAddress: freezed == adrAddress
          ? _self.adrAddress
          : adrAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      businessStatus: freezed == businessStatus
          ? _self.businessStatus
          : businessStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      curbsidePickup: freezed == curbsidePickup
          ? _self.curbsidePickup
          : curbsidePickup // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentOpeningHours: freezed == currentOpeningHours
          ? _self.currentOpeningHours
          : currentOpeningHours // ignore: cast_nullable_to_non_nullable
              as PlaceOpeningHours?,
      delivery: freezed == delivery
          ? _self.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      dineIn: freezed == dineIn
          ? _self.dineIn
          : dineIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      editorialSummary: freezed == editorialSummary
          ? _self.editorialSummary
          : editorialSummary // ignore: cast_nullable_to_non_nullable
              as PlaceEditorialSummary?,
      formattedAddress: freezed == formattedAddress
          ? _self.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedPhoneNumber: freezed == formattedPhoneNumber
          ? _self.formattedPhoneNumber
          : formattedPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _self.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackgroundColor: freezed == iconBackgroundColor
          ? _self.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconMaskBaseUri: freezed == iconMaskBaseUri
          ? _self.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalPhoneNumber: freezed == internationalPhoneNumber
          ? _self.internationalPhoneNumber
          : internationalPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _self.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as PlaceOpeningHours?,
      photos: freezed == photos
          ? _self.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PlacePhoto>?,
      placeId: freezed == placeId
          ? _self.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      plusCode: freezed == plusCode
          ? _self.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCode?,
      priceLevel: freezed == priceLevel
          ? _self.priceLevel
          : priceLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reservable: freezed == reservable
          ? _self.reservable
          : reservable // ignore: cast_nullable_to_non_nullable
              as bool?,
      reviews: freezed == reviews
          ? _self.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<PlaceReview>?,
      secondaryOpeningHours: freezed == secondaryOpeningHours
          ? _self.secondaryOpeningHours
          : secondaryOpeningHours // ignore: cast_nullable_to_non_nullable
              as List<PlaceOpeningHours>?,
      servesBeer: freezed == servesBeer
          ? _self.servesBeer
          : servesBeer // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesBreakfast: freezed == servesBreakfast
          ? _self.servesBreakfast
          : servesBreakfast // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesBrunch: freezed == servesBrunch
          ? _self.servesBrunch
          : servesBrunch // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesDinner: freezed == servesDinner
          ? _self.servesDinner
          : servesDinner // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesLunch: freezed == servesLunch
          ? _self.servesLunch
          : servesLunch // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesVegetarianFood: freezed == servesVegetarianFood
          ? _self.servesVegetarianFood
          : servesVegetarianFood // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesWine: freezed == servesWine
          ? _self.servesWine
          : servesWine // ignore: cast_nullable_to_non_nullable
              as bool?,
      takeout: freezed == takeout
          ? _self.takeout
          : takeout // ignore: cast_nullable_to_non_nullable
              as bool?,
      types: freezed == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      userRatingsTotal: freezed == userRatingsTotal
          ? _self.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      utcOffset: freezed == utcOffset
          ? _self.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      vicinity: freezed == vicinity
          ? _self.vicinity
          : vicinity // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      wheelchairAccessibleEntrance: freezed == wheelchairAccessibleEntrance
          ? _self.wheelchairAccessibleEntrance
          : wheelchairAccessibleEntrance // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursCopyWith<$Res>? get currentOpeningHours {
    if (_self.currentOpeningHours == null) {
      return null;
    }

    return $PlaceOpeningHoursCopyWith<$Res>(_self.currentOpeningHours!,
        (value) {
      return _then(_self.copyWith(currentOpeningHours: value));
    });
  }

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceEditorialSummaryCopyWith<$Res>? get editorialSummary {
    if (_self.editorialSummary == null) {
      return null;
    }

    return $PlaceEditorialSummaryCopyWith<$Res>(_self.editorialSummary!,
        (value) {
      return _then(_self.copyWith(editorialSummary: value));
    });
  }

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_self.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_self.geometry!, (value) {
      return _then(_self.copyWith(geometry: value));
    });
  }

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursCopyWith<$Res>? get openingHours {
    if (_self.openingHours == null) {
      return null;
    }

    return $PlaceOpeningHoursCopyWith<$Res>(_self.openingHours!, (value) {
      return _then(_self.copyWith(openingHours: value));
    });
  }

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlusCodeCopyWith<$Res>? get plusCode {
    if (_self.plusCode == null) {
      return null;
    }

    return $PlusCodeCopyWith<$Res>(_self.plusCode!, (value) {
      return _then(_self.copyWith(plusCode: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceDetails extends PlaceDetails {
  const _PlaceDetails(
      {@JsonKey(name: 'address_components')
      final List<PlaceAddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') this.adrAddress,
      @JsonKey(name: 'business_status') this.businessStatus,
      @JsonKey(name: 'curbside_pickup') this.curbsidePickup,
      @JsonKey(name: 'current_opening_hours') this.currentOpeningHours,
      this.delivery,
      @JsonKey(name: 'dine_in') this.dineIn,
      @JsonKey(name: 'editorial_summary') this.editorialSummary,
      @JsonKey(name: 'formatted_address') this.formattedAddress,
      @JsonKey(name: 'formatted_phone_number') this.formattedPhoneNumber,
      this.geometry,
      this.icon,
      @JsonKey(name: 'icon_background_color') this.iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') this.iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
      this.internationalPhoneNumber,
      this.name,
      @JsonKey(name: 'opening_hours') this.openingHours,
      final List<PlacePhoto>? photos,
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'plus_code') this.plusCode,
      @JsonKey(name: 'price_level') this.priceLevel,
      this.rating,
      this.reservable,
      final List<PlaceReview>? reviews,
      @JsonKey(name: 'secondary_opening_hours')
      final List<PlaceOpeningHours>? secondaryOpeningHours,
      @JsonKey(name: 'serves_beer') this.servesBeer,
      @JsonKey(name: 'serves_breakfast') this.servesBreakfast,
      @JsonKey(name: 'serves_brunch') this.servesBrunch,
      @JsonKey(name: 'serves_dinner') this.servesDinner,
      @JsonKey(name: 'serves_lunch') this.servesLunch,
      @JsonKey(name: 'serves_vegetarian_food') this.servesVegetarianFood,
      @JsonKey(name: 'serves_wine') this.servesWine,
      this.takeout,
      final List<String>? types,
      this.url,
      @JsonKey(name: 'user_ratings_total') this.userRatingsTotal,
      @JsonKey(name: 'utc_offset') this.utcOffset,
      this.vicinity,
      this.website,
      @JsonKey(name: 'wheelchair_accessible_entrance')
      this.wheelchairAccessibleEntrance})
      : _addressComponents = addressComponents,
        _photos = photos,
        _reviews = reviews,
        _secondaryOpeningHours = secondaryOpeningHours,
        _types = types,
        super._();
  factory _PlaceDetails.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsFromJson(json);

  /// An array containing the separate components applicable to this address.
  final List<PlaceAddressComponent>? _addressComponents;

  /// An array containing the separate components applicable to this address.
  @override
  @JsonKey(name: 'address_components')
  List<PlaceAddressComponent>? get addressComponents {
    final value = _addressComponents;
    if (value == null) return null;
    if (_addressComponents is EqualUnmodifiableListView)
      return _addressComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// A representation of the place's address in the adr microformat.
  /// See : https://microformats.org/wiki/adr
  @override
  @JsonKey(name: 'adr_address')
  final String? adrAddress;

  /// Indicates the operational status of the place, if it is a business.
  /// If no data exists, business_status is not returned.
  ///
  /// The allowed values include: OPERATIONAL, CLOSED_TEMPORARILY, and CLOSED_PERMANENTLY
  @override
  @JsonKey(name: 'business_status')
  final String? businessStatus;

  /// Specifies if the business supports curbside pickup.
  @override
  @JsonKey(name: 'curbside_pickup')
  final bool? curbsidePickup;

  /// Contains the hours of operation for the next seven days (including
  /// today). The time period starts at midnight on the date of the request
  /// and ends at 11:59 pm six days later. This field includes
  /// the special_days subfield of all hours, set for dates that have
  /// exceptional hours.
  @override
  @JsonKey(name: 'current_opening_hours')
  final PlaceOpeningHours? currentOpeningHours;

  /// Specifies if the business supports delivery.
  @override
  final bool? delivery;

  /// Specifies if the business supports indoor or outdoor seating options.
  @override
  @JsonKey(name: 'dine_in')
  final bool? dineIn;

  /// Contains a summary of the place. A summary is comprised of a textual
  /// overview, and also includes the language code for these if applicable.
  /// Summary text must be presented as-is and can not be modified or altered.
  @override
  @JsonKey(name: 'editorial_summary')
  final PlaceEditorialSummary? editorialSummary;

  /// A string containing the human-readable address of this place.
  ///
  /// Often this address is equivalent to the postal address. Note that some
  /// countries, such as the United Kingdom, do not allow distribution of true
  /// postal addresses due to licensing restrictions.
  ///
  /// The formatted address is logically composed of one or more address
  /// components. For example, the address "111 8th Avenue, New York, NY"
  /// consists of the following components: "111" (the street number),
  /// "8th Avenue" (the route), "New York" (the city) and "NY" (the US state).
  ///
  /// Do not parse the formatted address programmatically. Instead you should
  /// use the individual address components, which the API response includes
  /// in addition to the formatted address field.
  @override
  @JsonKey(name: 'formatted_address')
  final String? formattedAddress;

  /// Contains the place's phone number in its local format.
  @override
  @JsonKey(name: 'formatted_phone_number')
  final String? formattedPhoneNumber;

  /// Contains the location and viewport for the location.
  @override
  final Geometry? geometry;

  /// Contains the URL of a suggested icon which may be displayed to the user
  /// when indicating this result on a map.
  @override
  final String? icon;

  /// Contains the default HEX color code for the place's category.
  @override
  @JsonKey(name: 'icon_background_color')
  final String? iconBackgroundColor;

  /// Contains the URL of a recommended icon, minus the .svg or .png file
  /// type extension.
  @override
  @JsonKey(name: 'icon_mask_base_uri')
  final String? iconMaskBaseUri;

  /// Contains the place's phone number in international format.
  /// International format includes the country code, and is prefixed with
  /// the plus, +, sign. For example, the international_phone_number for
  /// Google's Sydney, Australia office is +61 2 9374 4000.
  @override
  @JsonKey(name: 'international_phone_number')
  final String? internationalPhoneNumber;

  /// Contains the human-readable name for the returned result. For
  /// establishment results, this is usually the canonicalized business name.
  @override
  final String? name;

  /// Contains the regular hours of operation.
  @override
  @JsonKey(name: 'opening_hours')
  final PlaceOpeningHours? openingHours;

  /// An array of photo objects, each containing a reference to an image.
  /// A request may return up to ten photos. More information about place
  /// photos and how you can use the images in your application can be found
  /// in the Place Photos documentation.
  final List<PlacePhoto>? _photos;

  /// An array of photo objects, each containing a reference to an image.
  /// A request may return up to ten photos. More information about place
  /// photos and how you can use the images in your application can be found
  /// in the Place Photos documentation.
  @override
  List<PlacePhoto>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// A textual identifier that uniquely identifies a place.
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;

  /// An encoded location reference, derived from latitude and longitude
  /// coordinates, that represents an area: 1/8000th of a degree by
  /// 1/8000th of a degree (about 14m x 14m at the equator) or smaller.
  /// Plus codes can be used as a replacement for street addresses in places
  /// where they do not exist (where buildings are not numbered or streets
  /// are not named).
  @override
  @JsonKey(name: 'plus_code')
  final PlusCode? plusCode;

  /// The price level of the place, on a scale of 0 to 4. The exact amount
  /// indicated by a specific value will vary from region to region.
  /// Price levels are interpreted as follows:
  /// - 0 Free
  /// - 1 Inexpensive
  /// - 2 Moderate
  /// - 3 Expensive
  /// - 4 Very Expensive
  @override
  @JsonKey(name: 'price_level')
  final int? priceLevel;

  /// Contains the place's rating, from 1.0 to 5.0, based on aggregated user
  /// reviews.
  @override
  final double? rating;

  /// Specifies if the place supports reservations.
  @override
  final bool? reservable;

  /// A JSON array of up to five reviews. By default, the reviews are
  /// sorted in order of relevance. Use the reviews_sort request parameter to
  /// control sorting.
  /// - For most_relevant (default), reviews are sorted by relevance; the
  /// service will bias the results to return reviews originally written in
  /// the preferred language.
  /// - For newest, reviews are sorted in chronological order; the preferred
  /// language does not affect the sort order.
  ///
  /// Google recommends indicating to users whether results are ordered by
  /// most_relevant or newest.
  final List<PlaceReview>? _reviews;

  /// A JSON array of up to five reviews. By default, the reviews are
  /// sorted in order of relevance. Use the reviews_sort request parameter to
  /// control sorting.
  /// - For most_relevant (default), reviews are sorted by relevance; the
  /// service will bias the results to return reviews originally written in
  /// the preferred language.
  /// - For newest, reviews are sorted in chronological order; the preferred
  /// language does not affect the sort order.
  ///
  /// Google recommends indicating to users whether results are ordered by
  /// most_relevant or newest.
  @override
  List<PlaceReview>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains an array of entries for the next seven days including
  /// information about secondary hours of a business. Secondary hours are
  /// different from a business's main hours. For example, a restaurant can
  /// specify drive through hours or delivery hours as its secondary hours.
  /// This field populates the type subfield, which draws from a predefined
  /// list of opening hours types (such as DRIVE_THROUGH, PICKUP, or TAKEOUT)
  /// based on the types of the place. This field includes the special_days
  /// subfield of all hours, set for dates that have exceptional hours.
  final List<PlaceOpeningHours>? _secondaryOpeningHours;

  /// Contains an array of entries for the next seven days including
  /// information about secondary hours of a business. Secondary hours are
  /// different from a business's main hours. For example, a restaurant can
  /// specify drive through hours or delivery hours as its secondary hours.
  /// This field populates the type subfield, which draws from a predefined
  /// list of opening hours types (such as DRIVE_THROUGH, PICKUP, or TAKEOUT)
  /// based on the types of the place. This field includes the special_days
  /// subfield of all hours, set for dates that have exceptional hours.
  @override
  @JsonKey(name: 'secondary_opening_hours')
  List<PlaceOpeningHours>? get secondaryOpeningHours {
    final value = _secondaryOpeningHours;
    if (value == null) return null;
    if (_secondaryOpeningHours is EqualUnmodifiableListView)
      return _secondaryOpeningHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Specifies if the place serves beer.
  @override
  @JsonKey(name: 'serves_beer')
  final bool? servesBeer;

  /// Specifies if the place serves breakfast.
  @override
  @JsonKey(name: 'serves_breakfast')
  final bool? servesBreakfast;

  /// Specifies if the place serves brunch.
  @override
  @JsonKey(name: 'serves_brunch')
  final bool? servesBrunch;

  /// Specifies if the place serves dinner.
  @override
  @JsonKey(name: 'serves_dinner')
  final bool? servesDinner;

  /// Specifies if the place serves lunch.
  @override
  @JsonKey(name: 'serves_lunch')
  final bool? servesLunch;

  /// Specifies if the place serves vegetarian food.
  @override
  @JsonKey(name: 'serves_vegetarian_food')
  final bool? servesVegetarianFood;

  /// Specifies if the place serves wine.
  @override
  @JsonKey(name: 'serves_wine')
  final bool? servesWine;

  /// Specifies if the business supports takeout.
  @override
  final bool? takeout;

  /// Contains an array of feature types describing the given result.
  /// See : https://developers.google.com/maps/documentation/places/web-service/legacy/supported_types#table2
  final List<String>? _types;

  /// Contains an array of feature types describing the given result.
  /// See : https://developers.google.com/maps/documentation/places/web-service/legacy/supported_types#table2
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains the URL of the official Google page for this place.
  /// This will be the Google-owned page that contains the best available
  /// information about the place. Applications must link to or embed this
  /// page on any screen that shows detailed results about the place to the
  /// user.
  @override
  final String? url;

  /// The total number of reviews, with or without text, for this place.
  @override
  @JsonKey(name: 'user_ratings_total')
  final int? userRatingsTotal;

  /// Contains the number of minutes this place’s current timezone is offset
  /// from UTC. For example, for places in Sydney, Australia during daylight
  /// saving time this would be 660 (+11 hours from UTC), and for places in
  /// California outside of daylight saving time this would be -480 (-8 hours
  /// from UTC).
  @override
  @JsonKey(name: 'utc_offset')
  final int? utcOffset;

  /// For establishment (types:["establishment", ...]) results only, the
  /// vicinity field contains a simplified address for the place, including
  /// the street name, street number, and locality, but not the
  /// province/state, postal code, or country.
  ///
  /// For all other results, the vicinity field contains the name of the
  /// narrowest political (types:["political", ...]) feature that is present
  /// in the address of the result.
  ///
  /// This content is meant to be read as-is. Do not programmatically parse
  /// the formatted address.
  @override
  final String? vicinity;

  /// The authoritative website for this place, such as a business' homepage.
  @override
  final String? website;

  /// Specifies if the place has an entrance that is wheelchair-accessible.
  @override
  @JsonKey(name: 'wheelchair_accessible_entrance')
  final bool? wheelchairAccessibleEntrance;

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceDetailsCopyWith<_PlaceDetails> get copyWith =>
      __$PlaceDetailsCopyWithImpl<_PlaceDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDetails &&
            const DeepCollectionEquality()
                .equals(other._addressComponents, _addressComponents) &&
            (identical(other.adrAddress, adrAddress) ||
                other.adrAddress == adrAddress) &&
            (identical(other.businessStatus, businessStatus) ||
                other.businessStatus == businessStatus) &&
            (identical(other.curbsidePickup, curbsidePickup) ||
                other.curbsidePickup == curbsidePickup) &&
            (identical(other.currentOpeningHours, currentOpeningHours) ||
                other.currentOpeningHours == currentOpeningHours) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.dineIn, dineIn) || other.dineIn == dineIn) &&
            (identical(other.editorialSummary, editorialSummary) ||
                other.editorialSummary == editorialSummary) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.formattedPhoneNumber, formattedPhoneNumber) ||
                other.formattedPhoneNumber == formattedPhoneNumber) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconBackgroundColor, iconBackgroundColor) ||
                other.iconBackgroundColor == iconBackgroundColor) &&
            (identical(other.iconMaskBaseUri, iconMaskBaseUri) ||
                other.iconMaskBaseUri == iconMaskBaseUri) &&
            (identical(
                    other.internationalPhoneNumber, internationalPhoneNumber) ||
                other.internationalPhoneNumber == internationalPhoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.plusCode, plusCode) ||
                other.plusCode == plusCode) &&
            (identical(other.priceLevel, priceLevel) ||
                other.priceLevel == priceLevel) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reservable, reservable) ||
                other.reservable == reservable) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality()
                .equals(other._secondaryOpeningHours, _secondaryOpeningHours) &&
            (identical(other.servesBeer, servesBeer) ||
                other.servesBeer == servesBeer) &&
            (identical(other.servesBreakfast, servesBreakfast) ||
                other.servesBreakfast == servesBreakfast) &&
            (identical(other.servesBrunch, servesBrunch) ||
                other.servesBrunch == servesBrunch) &&
            (identical(other.servesDinner, servesDinner) ||
                other.servesDinner == servesDinner) &&
            (identical(other.servesLunch, servesLunch) ||
                other.servesLunch == servesLunch) &&
            (identical(other.servesVegetarianFood, servesVegetarianFood) ||
                other.servesVegetarianFood == servesVegetarianFood) &&
            (identical(other.servesWine, servesWine) ||
                other.servesWine == servesWine) &&
            (identical(other.takeout, takeout) || other.takeout == takeout) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.userRatingsTotal, userRatingsTotal) ||
                other.userRatingsTotal == userRatingsTotal) &&
            (identical(other.utcOffset, utcOffset) ||
                other.utcOffset == utcOffset) &&
            (identical(other.vicinity, vicinity) ||
                other.vicinity == vicinity) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.wheelchairAccessibleEntrance,
                    wheelchairAccessibleEntrance) ||
                other.wheelchairAccessibleEntrance ==
                    wheelchairAccessibleEntrance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_addressComponents),
        adrAddress,
        businessStatus,
        curbsidePickup,
        currentOpeningHours,
        delivery,
        dineIn,
        editorialSummary,
        formattedAddress,
        formattedPhoneNumber,
        geometry,
        icon,
        iconBackgroundColor,
        iconMaskBaseUri,
        internationalPhoneNumber,
        name,
        openingHours,
        const DeepCollectionEquality().hash(_photos),
        placeId,
        plusCode,
        priceLevel,
        rating,
        reservable,
        const DeepCollectionEquality().hash(_reviews),
        const DeepCollectionEquality().hash(_secondaryOpeningHours),
        servesBeer,
        servesBreakfast,
        servesBrunch,
        servesDinner,
        servesLunch,
        servesVegetarianFood,
        servesWine,
        takeout,
        const DeepCollectionEquality().hash(_types),
        url,
        userRatingsTotal,
        utcOffset,
        vicinity,
        website,
        wheelchairAccessibleEntrance
      ]);

  @override
  String toString() {
    return 'PlaceDetails(addressComponents: $addressComponents, adrAddress: $adrAddress, businessStatus: $businessStatus, curbsidePickup: $curbsidePickup, currentOpeningHours: $currentOpeningHours, delivery: $delivery, dineIn: $dineIn, editorialSummary: $editorialSummary, formattedAddress: $formattedAddress, formattedPhoneNumber: $formattedPhoneNumber, geometry: $geometry, icon: $icon, iconBackgroundColor: $iconBackgroundColor, iconMaskBaseUri: $iconMaskBaseUri, internationalPhoneNumber: $internationalPhoneNumber, name: $name, openingHours: $openingHours, photos: $photos, placeId: $placeId, plusCode: $plusCode, priceLevel: $priceLevel, rating: $rating, reservable: $reservable, reviews: $reviews, secondaryOpeningHours: $secondaryOpeningHours, servesBeer: $servesBeer, servesBreakfast: $servesBreakfast, servesBrunch: $servesBrunch, servesDinner: $servesDinner, servesLunch: $servesLunch, servesVegetarianFood: $servesVegetarianFood, servesWine: $servesWine, takeout: $takeout, types: $types, url: $url, userRatingsTotal: $userRatingsTotal, utcOffset: $utcOffset, vicinity: $vicinity, website: $website, wheelchairAccessibleEntrance: $wheelchairAccessibleEntrance)';
  }
}

/// @nodoc
abstract mixin class _$PlaceDetailsCopyWith<$Res>
    implements $PlaceDetailsCopyWith<$Res> {
  factory _$PlaceDetailsCopyWith(
          _PlaceDetails value, $Res Function(_PlaceDetails) _then) =
      __$PlaceDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<PlaceAddressComponent>? addressComponents,
      @JsonKey(name: 'adr_address') String? adrAddress,
      @JsonKey(name: 'business_status') String? businessStatus,
      @JsonKey(name: 'curbside_pickup') bool? curbsidePickup,
      @JsonKey(name: 'current_opening_hours')
      PlaceOpeningHours? currentOpeningHours,
      bool? delivery,
      @JsonKey(name: 'dine_in') bool? dineIn,
      @JsonKey(name: 'editorial_summary')
      PlaceEditorialSummary? editorialSummary,
      @JsonKey(name: 'formatted_address') String? formattedAddress,
      @JsonKey(name: 'formatted_phone_number') String? formattedPhoneNumber,
      Geometry? geometry,
      String? icon,
      @JsonKey(name: 'icon_background_color') String? iconBackgroundColor,
      @JsonKey(name: 'icon_mask_base_uri') String? iconMaskBaseUri,
      @JsonKey(name: 'international_phone_number')
      String? internationalPhoneNumber,
      String? name,
      @JsonKey(name: 'opening_hours') PlaceOpeningHours? openingHours,
      List<PlacePhoto>? photos,
      @JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'plus_code') PlusCode? plusCode,
      @JsonKey(name: 'price_level') int? priceLevel,
      double? rating,
      bool? reservable,
      List<PlaceReview>? reviews,
      @JsonKey(name: 'secondary_opening_hours')
      List<PlaceOpeningHours>? secondaryOpeningHours,
      @JsonKey(name: 'serves_beer') bool? servesBeer,
      @JsonKey(name: 'serves_breakfast') bool? servesBreakfast,
      @JsonKey(name: 'serves_brunch') bool? servesBrunch,
      @JsonKey(name: 'serves_dinner') bool? servesDinner,
      @JsonKey(name: 'serves_lunch') bool? servesLunch,
      @JsonKey(name: 'serves_vegetarian_food') bool? servesVegetarianFood,
      @JsonKey(name: 'serves_wine') bool? servesWine,
      bool? takeout,
      List<String>? types,
      String? url,
      @JsonKey(name: 'user_ratings_total') int? userRatingsTotal,
      @JsonKey(name: 'utc_offset') int? utcOffset,
      String? vicinity,
      String? website,
      @JsonKey(name: 'wheelchair_accessible_entrance')
      bool? wheelchairAccessibleEntrance});

  @override
  $PlaceOpeningHoursCopyWith<$Res>? get currentOpeningHours;
  @override
  $PlaceEditorialSummaryCopyWith<$Res>? get editorialSummary;
  @override
  $GeometryCopyWith<$Res>? get geometry;
  @override
  $PlaceOpeningHoursCopyWith<$Res>? get openingHours;
  @override
  $PlusCodeCopyWith<$Res>? get plusCode;
}

/// @nodoc
class __$PlaceDetailsCopyWithImpl<$Res>
    implements _$PlaceDetailsCopyWith<$Res> {
  __$PlaceDetailsCopyWithImpl(this._self, this._then);

  final _PlaceDetails _self;
  final $Res Function(_PlaceDetails) _then;

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addressComponents = freezed,
    Object? adrAddress = freezed,
    Object? businessStatus = freezed,
    Object? curbsidePickup = freezed,
    Object? currentOpeningHours = freezed,
    Object? delivery = freezed,
    Object? dineIn = freezed,
    Object? editorialSummary = freezed,
    Object? formattedAddress = freezed,
    Object? formattedPhoneNumber = freezed,
    Object? geometry = freezed,
    Object? icon = freezed,
    Object? iconBackgroundColor = freezed,
    Object? iconMaskBaseUri = freezed,
    Object? internationalPhoneNumber = freezed,
    Object? name = freezed,
    Object? openingHours = freezed,
    Object? photos = freezed,
    Object? placeId = freezed,
    Object? plusCode = freezed,
    Object? priceLevel = freezed,
    Object? rating = freezed,
    Object? reservable = freezed,
    Object? reviews = freezed,
    Object? secondaryOpeningHours = freezed,
    Object? servesBeer = freezed,
    Object? servesBreakfast = freezed,
    Object? servesBrunch = freezed,
    Object? servesDinner = freezed,
    Object? servesLunch = freezed,
    Object? servesVegetarianFood = freezed,
    Object? servesWine = freezed,
    Object? takeout = freezed,
    Object? types = freezed,
    Object? url = freezed,
    Object? userRatingsTotal = freezed,
    Object? utcOffset = freezed,
    Object? vicinity = freezed,
    Object? website = freezed,
    Object? wheelchairAccessibleEntrance = freezed,
  }) {
    return _then(_PlaceDetails(
      addressComponents: freezed == addressComponents
          ? _self._addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<PlaceAddressComponent>?,
      adrAddress: freezed == adrAddress
          ? _self.adrAddress
          : adrAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      businessStatus: freezed == businessStatus
          ? _self.businessStatus
          : businessStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      curbsidePickup: freezed == curbsidePickup
          ? _self.curbsidePickup
          : curbsidePickup // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentOpeningHours: freezed == currentOpeningHours
          ? _self.currentOpeningHours
          : currentOpeningHours // ignore: cast_nullable_to_non_nullable
              as PlaceOpeningHours?,
      delivery: freezed == delivery
          ? _self.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      dineIn: freezed == dineIn
          ? _self.dineIn
          : dineIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      editorialSummary: freezed == editorialSummary
          ? _self.editorialSummary
          : editorialSummary // ignore: cast_nullable_to_non_nullable
              as PlaceEditorialSummary?,
      formattedAddress: freezed == formattedAddress
          ? _self.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedPhoneNumber: freezed == formattedPhoneNumber
          ? _self.formattedPhoneNumber
          : formattedPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _self.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconBackgroundColor: freezed == iconBackgroundColor
          ? _self.iconBackgroundColor
          : iconBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      iconMaskBaseUri: freezed == iconMaskBaseUri
          ? _self.iconMaskBaseUri
          : iconMaskBaseUri // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalPhoneNumber: freezed == internationalPhoneNumber
          ? _self.internationalPhoneNumber
          : internationalPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _self.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as PlaceOpeningHours?,
      photos: freezed == photos
          ? _self._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PlacePhoto>?,
      placeId: freezed == placeId
          ? _self.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      plusCode: freezed == plusCode
          ? _self.plusCode
          : plusCode // ignore: cast_nullable_to_non_nullable
              as PlusCode?,
      priceLevel: freezed == priceLevel
          ? _self.priceLevel
          : priceLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reservable: freezed == reservable
          ? _self.reservable
          : reservable // ignore: cast_nullable_to_non_nullable
              as bool?,
      reviews: freezed == reviews
          ? _self._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<PlaceReview>?,
      secondaryOpeningHours: freezed == secondaryOpeningHours
          ? _self._secondaryOpeningHours
          : secondaryOpeningHours // ignore: cast_nullable_to_non_nullable
              as List<PlaceOpeningHours>?,
      servesBeer: freezed == servesBeer
          ? _self.servesBeer
          : servesBeer // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesBreakfast: freezed == servesBreakfast
          ? _self.servesBreakfast
          : servesBreakfast // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesBrunch: freezed == servesBrunch
          ? _self.servesBrunch
          : servesBrunch // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesDinner: freezed == servesDinner
          ? _self.servesDinner
          : servesDinner // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesLunch: freezed == servesLunch
          ? _self.servesLunch
          : servesLunch // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesVegetarianFood: freezed == servesVegetarianFood
          ? _self.servesVegetarianFood
          : servesVegetarianFood // ignore: cast_nullable_to_non_nullable
              as bool?,
      servesWine: freezed == servesWine
          ? _self.servesWine
          : servesWine // ignore: cast_nullable_to_non_nullable
              as bool?,
      takeout: freezed == takeout
          ? _self.takeout
          : takeout // ignore: cast_nullable_to_non_nullable
              as bool?,
      types: freezed == types
          ? _self._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      userRatingsTotal: freezed == userRatingsTotal
          ? _self.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      utcOffset: freezed == utcOffset
          ? _self.utcOffset
          : utcOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      vicinity: freezed == vicinity
          ? _self.vicinity
          : vicinity // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      wheelchairAccessibleEntrance: freezed == wheelchairAccessibleEntrance
          ? _self.wheelchairAccessibleEntrance
          : wheelchairAccessibleEntrance // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursCopyWith<$Res>? get currentOpeningHours {
    if (_self.currentOpeningHours == null) {
      return null;
    }

    return $PlaceOpeningHoursCopyWith<$Res>(_self.currentOpeningHours!,
        (value) {
      return _then(_self.copyWith(currentOpeningHours: value));
    });
  }

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceEditorialSummaryCopyWith<$Res>? get editorialSummary {
    if (_self.editorialSummary == null) {
      return null;
    }

    return $PlaceEditorialSummaryCopyWith<$Res>(_self.editorialSummary!,
        (value) {
      return _then(_self.copyWith(editorialSummary: value));
    });
  }

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_self.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_self.geometry!, (value) {
      return _then(_self.copyWith(geometry: value));
    });
  }

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursCopyWith<$Res>? get openingHours {
    if (_self.openingHours == null) {
      return null;
    }

    return $PlaceOpeningHoursCopyWith<$Res>(_self.openingHours!, (value) {
      return _then(_self.copyWith(openingHours: value));
    });
  }

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlusCodeCopyWith<$Res>? get plusCode {
    if (_self.plusCode == null) {
      return null;
    }

    return $PlusCodeCopyWith<$Res>(_self.plusCode!, (value) {
      return _then(_self.copyWith(plusCode: value));
    });
  }
}

/// @nodoc
mixin _$PlaceAddressComponent {
  /// The full text description or name of the address component as returned
  /// by the Geocoder.
  @JsonKey(name: 'long_name')
  String get longName;

  /// An abbreviated textual name for the address component, if available.
  /// For example, an address component for the state of Alaska may have a
  /// long_name of "Alaska" and a short_name of "AK" using the 2-letter postal
  /// abbreviation.
  @JsonKey(name: 'short_name')
  String get shortName;

  /// An array indicating the type of the address component.
  /// See : https://developers.google.com/maps/documentation/places/web-service/supported_types
  List<String> get types;

  /// Create a copy of PlaceAddressComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceAddressComponentCopyWith<PlaceAddressComponent> get copyWith =>
      _$PlaceAddressComponentCopyWithImpl<PlaceAddressComponent>(
          this as PlaceAddressComponent, _$identity);

  /// Serializes this PlaceAddressComponent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceAddressComponent &&
            (identical(other.longName, longName) ||
                other.longName == longName) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, longName, shortName,
      const DeepCollectionEquality().hash(types));

  @override
  String toString() {
    return 'PlaceAddressComponent(longName: $longName, shortName: $shortName, types: $types)';
  }
}

/// @nodoc
abstract mixin class $PlaceAddressComponentCopyWith<$Res> {
  factory $PlaceAddressComponentCopyWith(PlaceAddressComponent value,
          $Res Function(PlaceAddressComponent) _then) =
      _$PlaceAddressComponentCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'long_name') String longName,
      @JsonKey(name: 'short_name') String shortName,
      List<String> types});
}

/// @nodoc
class _$PlaceAddressComponentCopyWithImpl<$Res>
    implements $PlaceAddressComponentCopyWith<$Res> {
  _$PlaceAddressComponentCopyWithImpl(this._self, this._then);

  final PlaceAddressComponent _self;
  final $Res Function(PlaceAddressComponent) _then;

  /// Create a copy of PlaceAddressComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longName = null,
    Object? shortName = null,
    Object? types = null,
  }) {
    return _then(_self.copyWith(
      longName: null == longName
          ? _self.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _self.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceAddressComponent extends PlaceAddressComponent {
  const _PlaceAddressComponent(
      {@JsonKey(name: 'long_name') required this.longName,
      @JsonKey(name: 'short_name') required this.shortName,
      required final List<String> types})
      : _types = types,
        super._();
  factory _PlaceAddressComponent.fromJson(Map<String, dynamic> json) =>
      _$PlaceAddressComponentFromJson(json);

  /// The full text description or name of the address component as returned
  /// by the Geocoder.
  @override
  @JsonKey(name: 'long_name')
  final String longName;

  /// An abbreviated textual name for the address component, if available.
  /// For example, an address component for the state of Alaska may have a
  /// long_name of "Alaska" and a short_name of "AK" using the 2-letter postal
  /// abbreviation.
  @override
  @JsonKey(name: 'short_name')
  final String shortName;

  /// An array indicating the type of the address component.
  /// See : https://developers.google.com/maps/documentation/places/web-service/supported_types
  final List<String> _types;

  /// An array indicating the type of the address component.
  /// See : https://developers.google.com/maps/documentation/places/web-service/supported_types
  @override
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  /// Create a copy of PlaceAddressComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceAddressComponentCopyWith<_PlaceAddressComponent> get copyWith =>
      __$PlaceAddressComponentCopyWithImpl<_PlaceAddressComponent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceAddressComponentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceAddressComponent &&
            (identical(other.longName, longName) ||
                other.longName == longName) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, longName, shortName,
      const DeepCollectionEquality().hash(_types));

  @override
  String toString() {
    return 'PlaceAddressComponent(longName: $longName, shortName: $shortName, types: $types)';
  }
}

/// @nodoc
abstract mixin class _$PlaceAddressComponentCopyWith<$Res>
    implements $PlaceAddressComponentCopyWith<$Res> {
  factory _$PlaceAddressComponentCopyWith(_PlaceAddressComponent value,
          $Res Function(_PlaceAddressComponent) _then) =
      __$PlaceAddressComponentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'long_name') String longName,
      @JsonKey(name: 'short_name') String shortName,
      List<String> types});
}

/// @nodoc
class __$PlaceAddressComponentCopyWithImpl<$Res>
    implements _$PlaceAddressComponentCopyWith<$Res> {
  __$PlaceAddressComponentCopyWithImpl(this._self, this._then);

  final _PlaceAddressComponent _self;
  final $Res Function(_PlaceAddressComponent) _then;

  /// Create a copy of PlaceAddressComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? longName = null,
    Object? shortName = null,
    Object? types = null,
  }) {
    return _then(_PlaceAddressComponent(
      longName: null == longName
          ? _self.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _self.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _self._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$PlaceEditorialSummary {
  /// The language of the previous fields.
  String? get language;

  /// A medium-length textual summary of the place.
  String? get overview;

  /// Create a copy of PlaceEditorialSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceEditorialSummaryCopyWith<PlaceEditorialSummary> get copyWith =>
      _$PlaceEditorialSummaryCopyWithImpl<PlaceEditorialSummary>(
          this as PlaceEditorialSummary, _$identity);

  /// Serializes this PlaceEditorialSummary to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceEditorialSummary &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, language, overview);

  @override
  String toString() {
    return 'PlaceEditorialSummary(language: $language, overview: $overview)';
  }
}

/// @nodoc
abstract mixin class $PlaceEditorialSummaryCopyWith<$Res> {
  factory $PlaceEditorialSummaryCopyWith(PlaceEditorialSummary value,
          $Res Function(PlaceEditorialSummary) _then) =
      _$PlaceEditorialSummaryCopyWithImpl;
  @useResult
  $Res call({String? language, String? overview});
}

/// @nodoc
class _$PlaceEditorialSummaryCopyWithImpl<$Res>
    implements $PlaceEditorialSummaryCopyWith<$Res> {
  _$PlaceEditorialSummaryCopyWithImpl(this._self, this._then);

  final PlaceEditorialSummary _self;
  final $Res Function(PlaceEditorialSummary) _then;

  /// Create a copy of PlaceEditorialSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? overview = freezed,
  }) {
    return _then(_self.copyWith(
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceEditorialSummary extends PlaceEditorialSummary {
  const _PlaceEditorialSummary({this.language, this.overview}) : super._();
  factory _PlaceEditorialSummary.fromJson(Map<String, dynamic> json) =>
      _$PlaceEditorialSummaryFromJson(json);

  /// The language of the previous fields.
  @override
  final String? language;

  /// A medium-length textual summary of the place.
  @override
  final String? overview;

  /// Create a copy of PlaceEditorialSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceEditorialSummaryCopyWith<_PlaceEditorialSummary> get copyWith =>
      __$PlaceEditorialSummaryCopyWithImpl<_PlaceEditorialSummary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceEditorialSummaryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceEditorialSummary &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, language, overview);

  @override
  String toString() {
    return 'PlaceEditorialSummary(language: $language, overview: $overview)';
  }
}

/// @nodoc
abstract mixin class _$PlaceEditorialSummaryCopyWith<$Res>
    implements $PlaceEditorialSummaryCopyWith<$Res> {
  factory _$PlaceEditorialSummaryCopyWith(_PlaceEditorialSummary value,
          $Res Function(_PlaceEditorialSummary) _then) =
      __$PlaceEditorialSummaryCopyWithImpl;
  @override
  @useResult
  $Res call({String? language, String? overview});
}

/// @nodoc
class __$PlaceEditorialSummaryCopyWithImpl<$Res>
    implements _$PlaceEditorialSummaryCopyWith<$Res> {
  __$PlaceEditorialSummaryCopyWithImpl(this._self, this._then);

  final _PlaceEditorialSummary _self;
  final $Res Function(_PlaceEditorialSummary) _then;

  /// Create a copy of PlaceEditorialSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? language = freezed,
    Object? overview = freezed,
  }) {
    return _then(_PlaceEditorialSummary(
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Geometry {
  /// An object describing a specific location with Latitude and Longitude in
  /// decimal degrees.
  LatLngLiteral get location;

  /// A rectangle in geographical coordinates from points at the southwest and
  /// northeast corners.
  Bounds get viewport;

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<Geometry> get copyWith =>
      _$GeometryCopyWithImpl<Geometry>(this as Geometry, _$identity);

  /// Serializes this Geometry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Geometry &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.viewport, viewport) ||
                other.viewport == viewport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location, viewport);

  @override
  String toString() {
    return 'Geometry(location: $location, viewport: $viewport)';
  }
}

/// @nodoc
abstract mixin class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) _then) =
      _$GeometryCopyWithImpl;
  @useResult
  $Res call({LatLngLiteral location, Bounds viewport});

  $LatLngLiteralCopyWith<$Res> get location;
  $BoundsCopyWith<$Res> get viewport;
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res> implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._self, this._then);

  final Geometry _self;
  final $Res Function(Geometry) _then;

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? viewport = null,
  }) {
    return _then(_self.copyWith(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLngLiteral,
      viewport: null == viewport
          ? _self.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as Bounds,
    ));
  }

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngLiteralCopyWith<$Res> get location {
    return $LatLngLiteralCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BoundsCopyWith<$Res> get viewport {
    return $BoundsCopyWith<$Res>(_self.viewport, (value) {
      return _then(_self.copyWith(viewport: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Geometry extends Geometry {
  const _Geometry({required this.location, required this.viewport}) : super._();
  factory _Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  /// An object describing a specific location with Latitude and Longitude in
  /// decimal degrees.
  @override
  final LatLngLiteral location;

  /// A rectangle in geographical coordinates from points at the southwest and
  /// northeast corners.
  @override
  final Bounds viewport;

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeometryCopyWith<_Geometry> get copyWith =>
      __$GeometryCopyWithImpl<_Geometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeometryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Geometry &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.viewport, viewport) ||
                other.viewport == viewport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location, viewport);

  @override
  String toString() {
    return 'Geometry(location: $location, viewport: $viewport)';
  }
}

/// @nodoc
abstract mixin class _$GeometryCopyWith<$Res>
    implements $GeometryCopyWith<$Res> {
  factory _$GeometryCopyWith(_Geometry value, $Res Function(_Geometry) _then) =
      __$GeometryCopyWithImpl;
  @override
  @useResult
  $Res call({LatLngLiteral location, Bounds viewport});

  @override
  $LatLngLiteralCopyWith<$Res> get location;
  @override
  $BoundsCopyWith<$Res> get viewport;
}

/// @nodoc
class __$GeometryCopyWithImpl<$Res> implements _$GeometryCopyWith<$Res> {
  __$GeometryCopyWithImpl(this._self, this._then);

  final _Geometry _self;
  final $Res Function(_Geometry) _then;

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? location = null,
    Object? viewport = null,
  }) {
    return _then(_Geometry(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLngLiteral,
      viewport: null == viewport
          ? _self.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as Bounds,
    ));
  }

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngLiteralCopyWith<$Res> get location {
    return $LatLngLiteralCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BoundsCopyWith<$Res> get viewport {
    return $BoundsCopyWith<$Res>(_self.viewport, (value) {
      return _then(_self.copyWith(viewport: value));
    });
  }
}

/// @nodoc
mixin _$LatLngLiteral {
  /// Latitude in decimal degrees.
  @JsonKey(name: 'lat')
  double get latitude;

  /// Longitude in decimal degrees.
  @JsonKey(name: 'lng')
  double get longitude;

  /// Create a copy of LatLngLiteral
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LatLngLiteralCopyWith<LatLngLiteral> get copyWith =>
      _$LatLngLiteralCopyWithImpl<LatLngLiteral>(
          this as LatLngLiteral, _$identity);

  /// Serializes this LatLngLiteral to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LatLngLiteral &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @override
  String toString() {
    return 'LatLngLiteral(latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $LatLngLiteralCopyWith<$Res> {
  factory $LatLngLiteralCopyWith(
          LatLngLiteral value, $Res Function(LatLngLiteral) _then) =
      _$LatLngLiteralCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') double latitude,
      @JsonKey(name: 'lng') double longitude});
}

/// @nodoc
class _$LatLngLiteralCopyWithImpl<$Res>
    implements $LatLngLiteralCopyWith<$Res> {
  _$LatLngLiteralCopyWithImpl(this._self, this._then);

  final LatLngLiteral _self;
  final $Res Function(LatLngLiteral) _then;

  /// Create a copy of LatLngLiteral
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_self.copyWith(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LatLngLiteral extends LatLngLiteral {
  const _LatLngLiteral(
      {@JsonKey(name: 'lat') required this.latitude,
      @JsonKey(name: 'lng') required this.longitude})
      : super._();
  factory _LatLngLiteral.fromJson(Map<String, dynamic> json) =>
      _$LatLngLiteralFromJson(json);

  /// Latitude in decimal degrees.
  @override
  @JsonKey(name: 'lat')
  final double latitude;

  /// Longitude in decimal degrees.
  @override
  @JsonKey(name: 'lng')
  final double longitude;

  /// Create a copy of LatLngLiteral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LatLngLiteralCopyWith<_LatLngLiteral> get copyWith =>
      __$LatLngLiteralCopyWithImpl<_LatLngLiteral>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LatLngLiteralToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LatLngLiteral &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @override
  String toString() {
    return 'LatLngLiteral(latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$LatLngLiteralCopyWith<$Res>
    implements $LatLngLiteralCopyWith<$Res> {
  factory _$LatLngLiteralCopyWith(
          _LatLngLiteral value, $Res Function(_LatLngLiteral) _then) =
      __$LatLngLiteralCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') double latitude,
      @JsonKey(name: 'lng') double longitude});
}

/// @nodoc
class __$LatLngLiteralCopyWithImpl<$Res>
    implements _$LatLngLiteralCopyWith<$Res> {
  __$LatLngLiteralCopyWithImpl(this._self, this._then);

  final _LatLngLiteral _self;
  final $Res Function(_LatLngLiteral) _then;

  /// Create a copy of LatLngLiteral
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_LatLngLiteral(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$Bounds {
  LatLngLiteral get northeast;
  LatLngLiteral get southwest;

  /// Create a copy of Bounds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BoundsCopyWith<Bounds> get copyWith =>
      _$BoundsCopyWithImpl<Bounds>(this as Bounds, _$identity);

  /// Serializes this Bounds to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Bounds &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  @override
  String toString() {
    return 'Bounds(northeast: $northeast, southwest: $southwest)';
  }
}

/// @nodoc
abstract mixin class $BoundsCopyWith<$Res> {
  factory $BoundsCopyWith(Bounds value, $Res Function(Bounds) _then) =
      _$BoundsCopyWithImpl;
  @useResult
  $Res call({LatLngLiteral northeast, LatLngLiteral southwest});

  $LatLngLiteralCopyWith<$Res> get northeast;
  $LatLngLiteralCopyWith<$Res> get southwest;
}

/// @nodoc
class _$BoundsCopyWithImpl<$Res> implements $BoundsCopyWith<$Res> {
  _$BoundsCopyWithImpl(this._self, this._then);

  final Bounds _self;
  final $Res Function(Bounds) _then;

  /// Create a copy of Bounds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = null,
    Object? southwest = null,
  }) {
    return _then(_self.copyWith(
      northeast: null == northeast
          ? _self.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as LatLngLiteral,
      southwest: null == southwest
          ? _self.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as LatLngLiteral,
    ));
  }

  /// Create a copy of Bounds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngLiteralCopyWith<$Res> get northeast {
    return $LatLngLiteralCopyWith<$Res>(_self.northeast, (value) {
      return _then(_self.copyWith(northeast: value));
    });
  }

  /// Create a copy of Bounds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngLiteralCopyWith<$Res> get southwest {
    return $LatLngLiteralCopyWith<$Res>(_self.southwest, (value) {
      return _then(_self.copyWith(southwest: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Bounds extends Bounds {
  const _Bounds({required this.northeast, required this.southwest}) : super._();
  factory _Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);

  @override
  final LatLngLiteral northeast;
  @override
  final LatLngLiteral southwest;

  /// Create a copy of Bounds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BoundsCopyWith<_Bounds> get copyWith =>
      __$BoundsCopyWithImpl<_Bounds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BoundsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bounds &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  @override
  String toString() {
    return 'Bounds(northeast: $northeast, southwest: $southwest)';
  }
}

/// @nodoc
abstract mixin class _$BoundsCopyWith<$Res> implements $BoundsCopyWith<$Res> {
  factory _$BoundsCopyWith(_Bounds value, $Res Function(_Bounds) _then) =
      __$BoundsCopyWithImpl;
  @override
  @useResult
  $Res call({LatLngLiteral northeast, LatLngLiteral southwest});

  @override
  $LatLngLiteralCopyWith<$Res> get northeast;
  @override
  $LatLngLiteralCopyWith<$Res> get southwest;
}

/// @nodoc
class __$BoundsCopyWithImpl<$Res> implements _$BoundsCopyWith<$Res> {
  __$BoundsCopyWithImpl(this._self, this._then);

  final _Bounds _self;
  final $Res Function(_Bounds) _then;

  /// Create a copy of Bounds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? northeast = null,
    Object? southwest = null,
  }) {
    return _then(_Bounds(
      northeast: null == northeast
          ? _self.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as LatLngLiteral,
      southwest: null == southwest
          ? _self.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as LatLngLiteral,
    ));
  }

  /// Create a copy of Bounds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngLiteralCopyWith<$Res> get northeast {
    return $LatLngLiteralCopyWith<$Res>(_self.northeast, (value) {
      return _then(_self.copyWith(northeast: value));
    });
  }

  /// Create a copy of Bounds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngLiteralCopyWith<$Res> get southwest {
    return $LatLngLiteralCopyWith<$Res>(_self.southwest, (value) {
      return _then(_self.copyWith(southwest: value));
    });
  }
}

/// @nodoc
mixin _$PlaceOpeningHours {
  /// A boolean value indicating if the place is open at the current time.
  @JsonKey(name: 'open_now')
  bool? get openNow;

  /// An array of opening periods covering seven days, starting from Sunday,
  /// in chronological order.
  List<PlaceOpeningHoursPeriod>? get periods;

  /// An array of up to seven entries corresponding to the next seven days.
  @JsonKey(name: 'special_days')
  List<PlaceSpecialDay>? get specialDays;

  /// A type string used to identify the type of secondary hours
  /// (for example, DRIVE_THROUGH, HAPPY_HOUR, DELIVERY, TAKEOUT, KITCHEN,
  /// BREAKFAST, LUNCH, DINNER, BRUNCH, PICKUP, SENIOR_HOURS).
  /// Set for secondary_opening_hours only.
  String? get type;

  /// An array of strings describing in human-readable text the hours
  /// of the place.
  @JsonKey(name: 'weekday_text')
  String? get weekdayText;

  /// Create a copy of PlaceOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursCopyWith<PlaceOpeningHours> get copyWith =>
      _$PlaceOpeningHoursCopyWithImpl<PlaceOpeningHours>(
          this as PlaceOpeningHours, _$identity);

  /// Serializes this PlaceOpeningHours to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceOpeningHours &&
            (identical(other.openNow, openNow) || other.openNow == openNow) &&
            const DeepCollectionEquality().equals(other.periods, periods) &&
            const DeepCollectionEquality()
                .equals(other.specialDays, specialDays) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.weekdayText, weekdayText) ||
                other.weekdayText == weekdayText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      openNow,
      const DeepCollectionEquality().hash(periods),
      const DeepCollectionEquality().hash(specialDays),
      type,
      weekdayText);

  @override
  String toString() {
    return 'PlaceOpeningHours(openNow: $openNow, periods: $periods, specialDays: $specialDays, type: $type, weekdayText: $weekdayText)';
  }
}

/// @nodoc
abstract mixin class $PlaceOpeningHoursCopyWith<$Res> {
  factory $PlaceOpeningHoursCopyWith(
          PlaceOpeningHours value, $Res Function(PlaceOpeningHours) _then) =
      _$PlaceOpeningHoursCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'open_now') bool? openNow,
      List<PlaceOpeningHoursPeriod>? periods,
      @JsonKey(name: 'special_days') List<PlaceSpecialDay>? specialDays,
      String? type,
      @JsonKey(name: 'weekday_text') String? weekdayText});
}

/// @nodoc
class _$PlaceOpeningHoursCopyWithImpl<$Res>
    implements $PlaceOpeningHoursCopyWith<$Res> {
  _$PlaceOpeningHoursCopyWithImpl(this._self, this._then);

  final PlaceOpeningHours _self;
  final $Res Function(PlaceOpeningHours) _then;

  /// Create a copy of PlaceOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? specialDays = freezed,
    Object? type = freezed,
    Object? weekdayText = freezed,
  }) {
    return _then(_self.copyWith(
      openNow: freezed == openNow
          ? _self.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: freezed == periods
          ? _self.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<PlaceOpeningHoursPeriod>?,
      specialDays: freezed == specialDays
          ? _self.specialDays
          : specialDays // ignore: cast_nullable_to_non_nullable
              as List<PlaceSpecialDay>?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      weekdayText: freezed == weekdayText
          ? _self.weekdayText
          : weekdayText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceOpeningHours extends PlaceOpeningHours {
  const _PlaceOpeningHours(
      {@JsonKey(name: 'open_now') this.openNow,
      final List<PlaceOpeningHoursPeriod>? periods,
      @JsonKey(name: 'special_days') final List<PlaceSpecialDay>? specialDays,
      this.type,
      @JsonKey(name: 'weekday_text') this.weekdayText})
      : _periods = periods,
        _specialDays = specialDays,
        super._();
  factory _PlaceOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursFromJson(json);

  /// A boolean value indicating if the place is open at the current time.
  @override
  @JsonKey(name: 'open_now')
  final bool? openNow;

  /// An array of opening periods covering seven days, starting from Sunday,
  /// in chronological order.
  final List<PlaceOpeningHoursPeriod>? _periods;

  /// An array of opening periods covering seven days, starting from Sunday,
  /// in chronological order.
  @override
  List<PlaceOpeningHoursPeriod>? get periods {
    final value = _periods;
    if (value == null) return null;
    if (_periods is EqualUnmodifiableListView) return _periods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// An array of up to seven entries corresponding to the next seven days.
  final List<PlaceSpecialDay>? _specialDays;

  /// An array of up to seven entries corresponding to the next seven days.
  @override
  @JsonKey(name: 'special_days')
  List<PlaceSpecialDay>? get specialDays {
    final value = _specialDays;
    if (value == null) return null;
    if (_specialDays is EqualUnmodifiableListView) return _specialDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// A type string used to identify the type of secondary hours
  /// (for example, DRIVE_THROUGH, HAPPY_HOUR, DELIVERY, TAKEOUT, KITCHEN,
  /// BREAKFAST, LUNCH, DINNER, BRUNCH, PICKUP, SENIOR_HOURS).
  /// Set for secondary_opening_hours only.
  @override
  final String? type;

  /// An array of strings describing in human-readable text the hours
  /// of the place.
  @override
  @JsonKey(name: 'weekday_text')
  final String? weekdayText;

  /// Create a copy of PlaceOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceOpeningHoursCopyWith<_PlaceOpeningHours> get copyWith =>
      __$PlaceOpeningHoursCopyWithImpl<_PlaceOpeningHours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceOpeningHoursToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceOpeningHours &&
            (identical(other.openNow, openNow) || other.openNow == openNow) &&
            const DeepCollectionEquality().equals(other._periods, _periods) &&
            const DeepCollectionEquality()
                .equals(other._specialDays, _specialDays) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.weekdayText, weekdayText) ||
                other.weekdayText == weekdayText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      openNow,
      const DeepCollectionEquality().hash(_periods),
      const DeepCollectionEquality().hash(_specialDays),
      type,
      weekdayText);

  @override
  String toString() {
    return 'PlaceOpeningHours(openNow: $openNow, periods: $periods, specialDays: $specialDays, type: $type, weekdayText: $weekdayText)';
  }
}

/// @nodoc
abstract mixin class _$PlaceOpeningHoursCopyWith<$Res>
    implements $PlaceOpeningHoursCopyWith<$Res> {
  factory _$PlaceOpeningHoursCopyWith(
          _PlaceOpeningHours value, $Res Function(_PlaceOpeningHours) _then) =
      __$PlaceOpeningHoursCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'open_now') bool? openNow,
      List<PlaceOpeningHoursPeriod>? periods,
      @JsonKey(name: 'special_days') List<PlaceSpecialDay>? specialDays,
      String? type,
      @JsonKey(name: 'weekday_text') String? weekdayText});
}

/// @nodoc
class __$PlaceOpeningHoursCopyWithImpl<$Res>
    implements _$PlaceOpeningHoursCopyWith<$Res> {
  __$PlaceOpeningHoursCopyWithImpl(this._self, this._then);

  final _PlaceOpeningHours _self;
  final $Res Function(_PlaceOpeningHours) _then;

  /// Create a copy of PlaceOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? specialDays = freezed,
    Object? type = freezed,
    Object? weekdayText = freezed,
  }) {
    return _then(_PlaceOpeningHours(
      openNow: freezed == openNow
          ? _self.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: freezed == periods
          ? _self._periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<PlaceOpeningHoursPeriod>?,
      specialDays: freezed == specialDays
          ? _self._specialDays
          : specialDays // ignore: cast_nullable_to_non_nullable
              as List<PlaceSpecialDay>?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      weekdayText: freezed == weekdayText
          ? _self.weekdayText
          : weekdayText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PlaceOpeningHoursPeriod {
  /// Contains a pair of day and time objects describing when the place opens.
  PlaceOpeningHoursPeriodDetail get open;

  /// May contain a pair of day and time objects describing when the place
  /// closes. If a place is always open, the close section will be missing
  /// from the response. Clients can rely on always-open being represented
  /// as an open period containing day with value 0 and time with value
  /// 0000, and no close.
  PlaceOpeningHoursPeriodDetail? get close;

  /// Create a copy of PlaceOpeningHoursPeriod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursPeriodCopyWith<PlaceOpeningHoursPeriod> get copyWith =>
      _$PlaceOpeningHoursPeriodCopyWithImpl<PlaceOpeningHoursPeriod>(
          this as PlaceOpeningHoursPeriod, _$identity);

  /// Serializes this PlaceOpeningHoursPeriod to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceOpeningHoursPeriod &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  @override
  String toString() {
    return 'PlaceOpeningHoursPeriod(open: $open, close: $close)';
  }
}

/// @nodoc
abstract mixin class $PlaceOpeningHoursPeriodCopyWith<$Res> {
  factory $PlaceOpeningHoursPeriodCopyWith(PlaceOpeningHoursPeriod value,
          $Res Function(PlaceOpeningHoursPeriod) _then) =
      _$PlaceOpeningHoursPeriodCopyWithImpl;
  @useResult
  $Res call(
      {PlaceOpeningHoursPeriodDetail open,
      PlaceOpeningHoursPeriodDetail? close});

  $PlaceOpeningHoursPeriodDetailCopyWith<$Res> get open;
  $PlaceOpeningHoursPeriodDetailCopyWith<$Res>? get close;
}

/// @nodoc
class _$PlaceOpeningHoursPeriodCopyWithImpl<$Res>
    implements $PlaceOpeningHoursPeriodCopyWith<$Res> {
  _$PlaceOpeningHoursPeriodCopyWithImpl(this._self, this._then);

  final PlaceOpeningHoursPeriod _self;
  final $Res Function(PlaceOpeningHoursPeriod) _then;

  /// Create a copy of PlaceOpeningHoursPeriod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? close = freezed,
  }) {
    return _then(_self.copyWith(
      open: null == open
          ? _self.open
          : open // ignore: cast_nullable_to_non_nullable
              as PlaceOpeningHoursPeriodDetail,
      close: freezed == close
          ? _self.close
          : close // ignore: cast_nullable_to_non_nullable
              as PlaceOpeningHoursPeriodDetail?,
    ));
  }

  /// Create a copy of PlaceOpeningHoursPeriod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursPeriodDetailCopyWith<$Res> get open {
    return $PlaceOpeningHoursPeriodDetailCopyWith<$Res>(_self.open, (value) {
      return _then(_self.copyWith(open: value));
    });
  }

  /// Create a copy of PlaceOpeningHoursPeriod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursPeriodDetailCopyWith<$Res>? get close {
    if (_self.close == null) {
      return null;
    }

    return $PlaceOpeningHoursPeriodDetailCopyWith<$Res>(_self.close!, (value) {
      return _then(_self.copyWith(close: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceOpeningHoursPeriod extends PlaceOpeningHoursPeriod {
  const _PlaceOpeningHoursPeriod({required this.open, this.close}) : super._();
  factory _PlaceOpeningHoursPeriod.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursPeriodFromJson(json);

  /// Contains a pair of day and time objects describing when the place opens.
  @override
  final PlaceOpeningHoursPeriodDetail open;

  /// May contain a pair of day and time objects describing when the place
  /// closes. If a place is always open, the close section will be missing
  /// from the response. Clients can rely on always-open being represented
  /// as an open period containing day with value 0 and time with value
  /// 0000, and no close.
  @override
  final PlaceOpeningHoursPeriodDetail? close;

  /// Create a copy of PlaceOpeningHoursPeriod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceOpeningHoursPeriodCopyWith<_PlaceOpeningHoursPeriod> get copyWith =>
      __$PlaceOpeningHoursPeriodCopyWithImpl<_PlaceOpeningHoursPeriod>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceOpeningHoursPeriodToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceOpeningHoursPeriod &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  @override
  String toString() {
    return 'PlaceOpeningHoursPeriod(open: $open, close: $close)';
  }
}

/// @nodoc
abstract mixin class _$PlaceOpeningHoursPeriodCopyWith<$Res>
    implements $PlaceOpeningHoursPeriodCopyWith<$Res> {
  factory _$PlaceOpeningHoursPeriodCopyWith(_PlaceOpeningHoursPeriod value,
          $Res Function(_PlaceOpeningHoursPeriod) _then) =
      __$PlaceOpeningHoursPeriodCopyWithImpl;
  @override
  @useResult
  $Res call(
      {PlaceOpeningHoursPeriodDetail open,
      PlaceOpeningHoursPeriodDetail? close});

  @override
  $PlaceOpeningHoursPeriodDetailCopyWith<$Res> get open;
  @override
  $PlaceOpeningHoursPeriodDetailCopyWith<$Res>? get close;
}

/// @nodoc
class __$PlaceOpeningHoursPeriodCopyWithImpl<$Res>
    implements _$PlaceOpeningHoursPeriodCopyWith<$Res> {
  __$PlaceOpeningHoursPeriodCopyWithImpl(this._self, this._then);

  final _PlaceOpeningHoursPeriod _self;
  final $Res Function(_PlaceOpeningHoursPeriod) _then;

  /// Create a copy of PlaceOpeningHoursPeriod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? open = null,
    Object? close = freezed,
  }) {
    return _then(_PlaceOpeningHoursPeriod(
      open: null == open
          ? _self.open
          : open // ignore: cast_nullable_to_non_nullable
              as PlaceOpeningHoursPeriodDetail,
      close: freezed == close
          ? _self.close
          : close // ignore: cast_nullable_to_non_nullable
              as PlaceOpeningHoursPeriodDetail?,
    ));
  }

  /// Create a copy of PlaceOpeningHoursPeriod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursPeriodDetailCopyWith<$Res> get open {
    return $PlaceOpeningHoursPeriodDetailCopyWith<$Res>(_self.open, (value) {
      return _then(_self.copyWith(open: value));
    });
  }

  /// Create a copy of PlaceOpeningHoursPeriod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursPeriodDetailCopyWith<$Res>? get close {
    if (_self.close == null) {
      return null;
    }

    return $PlaceOpeningHoursPeriodDetailCopyWith<$Res>(_self.close!, (value) {
      return _then(_self.copyWith(close: value));
    });
  }
}

/// @nodoc
mixin _$PlaceSpecialDay {
  /// A date expressed in RFC3339 format in the local timezone for the place,
  /// for example 2010-12-31
  String? get date;

  /// True if there are exceptional hours for this day. If true, this means
  /// that there is at least one exception for this day. Exceptions cause
  /// different values to occur in the subfields of current_opening_hours and
  /// secondary_opening_hours such as periods, weekday_text, open_now.
  /// The exceptions apply to the hours, and the hours are used to generate
  /// the other fields.
  @JsonKey(name: 'exceptional_hours')
  bool? get exceptionalHours;

  /// Create a copy of PlaceSpecialDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceSpecialDayCopyWith<PlaceSpecialDay> get copyWith =>
      _$PlaceSpecialDayCopyWithImpl<PlaceSpecialDay>(
          this as PlaceSpecialDay, _$identity);

  /// Serializes this PlaceSpecialDay to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceSpecialDay &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.exceptionalHours, exceptionalHours) ||
                other.exceptionalHours == exceptionalHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, exceptionalHours);

  @override
  String toString() {
    return 'PlaceSpecialDay(date: $date, exceptionalHours: $exceptionalHours)';
  }
}

/// @nodoc
abstract mixin class $PlaceSpecialDayCopyWith<$Res> {
  factory $PlaceSpecialDayCopyWith(
          PlaceSpecialDay value, $Res Function(PlaceSpecialDay) _then) =
      _$PlaceSpecialDayCopyWithImpl;
  @useResult
  $Res call(
      {String? date,
      @JsonKey(name: 'exceptional_hours') bool? exceptionalHours});
}

/// @nodoc
class _$PlaceSpecialDayCopyWithImpl<$Res>
    implements $PlaceSpecialDayCopyWith<$Res> {
  _$PlaceSpecialDayCopyWithImpl(this._self, this._then);

  final PlaceSpecialDay _self;
  final $Res Function(PlaceSpecialDay) _then;

  /// Create a copy of PlaceSpecialDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? exceptionalHours = freezed,
  }) {
    return _then(_self.copyWith(
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      exceptionalHours: freezed == exceptionalHours
          ? _self.exceptionalHours
          : exceptionalHours // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceSpecialDay extends PlaceSpecialDay {
  const _PlaceSpecialDay(
      {this.date, @JsonKey(name: 'exceptional_hours') this.exceptionalHours})
      : super._();
  factory _PlaceSpecialDay.fromJson(Map<String, dynamic> json) =>
      _$PlaceSpecialDayFromJson(json);

  /// A date expressed in RFC3339 format in the local timezone for the place,
  /// for example 2010-12-31
  @override
  final String? date;

  /// True if there are exceptional hours for this day. If true, this means
  /// that there is at least one exception for this day. Exceptions cause
  /// different values to occur in the subfields of current_opening_hours and
  /// secondary_opening_hours such as periods, weekday_text, open_now.
  /// The exceptions apply to the hours, and the hours are used to generate
  /// the other fields.
  @override
  @JsonKey(name: 'exceptional_hours')
  final bool? exceptionalHours;

  /// Create a copy of PlaceSpecialDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceSpecialDayCopyWith<_PlaceSpecialDay> get copyWith =>
      __$PlaceSpecialDayCopyWithImpl<_PlaceSpecialDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceSpecialDayToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceSpecialDay &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.exceptionalHours, exceptionalHours) ||
                other.exceptionalHours == exceptionalHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, exceptionalHours);

  @override
  String toString() {
    return 'PlaceSpecialDay(date: $date, exceptionalHours: $exceptionalHours)';
  }
}

/// @nodoc
abstract mixin class _$PlaceSpecialDayCopyWith<$Res>
    implements $PlaceSpecialDayCopyWith<$Res> {
  factory _$PlaceSpecialDayCopyWith(
          _PlaceSpecialDay value, $Res Function(_PlaceSpecialDay) _then) =
      __$PlaceSpecialDayCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? date,
      @JsonKey(name: 'exceptional_hours') bool? exceptionalHours});
}

/// @nodoc
class __$PlaceSpecialDayCopyWithImpl<$Res>
    implements _$PlaceSpecialDayCopyWith<$Res> {
  __$PlaceSpecialDayCopyWithImpl(this._self, this._then);

  final _PlaceSpecialDay _self;
  final $Res Function(_PlaceSpecialDay) _then;

  /// Create a copy of PlaceSpecialDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = freezed,
    Object? exceptionalHours = freezed,
  }) {
    return _then(_PlaceSpecialDay(
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      exceptionalHours: freezed == exceptionalHours
          ? _self.exceptionalHours
          : exceptionalHours // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$PlaceOpeningHoursPeriodDetail {
  /// A number from 0–6, corresponding to the days of the week, starting on
  /// Sunday. For example, 2 means Tuesday.
  int get day;

  /// May contain a time of day in 24-hour hhmm format. Values are in the
  /// range 0000–2359. The time will be reported in the place’s time zone.
  String get time;

  /// A date expressed in RFC3339 format in the local timezone for the place,
  /// for example 2010-12-31.
  String? get date;

  /// True if a given period was truncated due to a seven-day cutoff, where
  /// the period starts before midnight on the date of the request and/or
  /// ends at or after midnight on the last day. This property indicates that
  /// the period for open or close can extend past this seven-day cutoff.
  bool? get truncated;

  /// Create a copy of PlaceOpeningHoursPeriodDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceOpeningHoursPeriodDetailCopyWith<PlaceOpeningHoursPeriodDetail>
      get copyWith => _$PlaceOpeningHoursPeriodDetailCopyWithImpl<
              PlaceOpeningHoursPeriodDetail>(
          this as PlaceOpeningHoursPeriodDetail, _$identity);

  /// Serializes this PlaceOpeningHoursPeriodDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceOpeningHoursPeriodDetail &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.truncated, truncated) ||
                other.truncated == truncated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, time, date, truncated);

  @override
  String toString() {
    return 'PlaceOpeningHoursPeriodDetail(day: $day, time: $time, date: $date, truncated: $truncated)';
  }
}

/// @nodoc
abstract mixin class $PlaceOpeningHoursPeriodDetailCopyWith<$Res> {
  factory $PlaceOpeningHoursPeriodDetailCopyWith(
          PlaceOpeningHoursPeriodDetail value,
          $Res Function(PlaceOpeningHoursPeriodDetail) _then) =
      _$PlaceOpeningHoursPeriodDetailCopyWithImpl;
  @useResult
  $Res call({int day, String time, String? date, bool? truncated});
}

/// @nodoc
class _$PlaceOpeningHoursPeriodDetailCopyWithImpl<$Res>
    implements $PlaceOpeningHoursPeriodDetailCopyWith<$Res> {
  _$PlaceOpeningHoursPeriodDetailCopyWithImpl(this._self, this._then);

  final PlaceOpeningHoursPeriodDetail _self;
  final $Res Function(PlaceOpeningHoursPeriodDetail) _then;

  /// Create a copy of PlaceOpeningHoursPeriodDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? time = null,
    Object? date = freezed,
    Object? truncated = freezed,
  }) {
    return _then(_self.copyWith(
      day: null == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      truncated: freezed == truncated
          ? _self.truncated
          : truncated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceOpeningHoursPeriodDetail extends PlaceOpeningHoursPeriodDetail {
  const _PlaceOpeningHoursPeriodDetail(
      {required this.day, required this.time, this.date, this.truncated})
      : super._();
  factory _PlaceOpeningHoursPeriodDetail.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursPeriodDetailFromJson(json);

  /// A number from 0–6, corresponding to the days of the week, starting on
  /// Sunday. For example, 2 means Tuesday.
  @override
  final int day;

  /// May contain a time of day in 24-hour hhmm format. Values are in the
  /// range 0000–2359. The time will be reported in the place’s time zone.
  @override
  final String time;

  /// A date expressed in RFC3339 format in the local timezone for the place,
  /// for example 2010-12-31.
  @override
  final String? date;

  /// True if a given period was truncated due to a seven-day cutoff, where
  /// the period starts before midnight on the date of the request and/or
  /// ends at or after midnight on the last day. This property indicates that
  /// the period for open or close can extend past this seven-day cutoff.
  @override
  final bool? truncated;

  /// Create a copy of PlaceOpeningHoursPeriodDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceOpeningHoursPeriodDetailCopyWith<_PlaceOpeningHoursPeriodDetail>
      get copyWith => __$PlaceOpeningHoursPeriodDetailCopyWithImpl<
          _PlaceOpeningHoursPeriodDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceOpeningHoursPeriodDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceOpeningHoursPeriodDetail &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.truncated, truncated) ||
                other.truncated == truncated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, time, date, truncated);

  @override
  String toString() {
    return 'PlaceOpeningHoursPeriodDetail(day: $day, time: $time, date: $date, truncated: $truncated)';
  }
}

/// @nodoc
abstract mixin class _$PlaceOpeningHoursPeriodDetailCopyWith<$Res>
    implements $PlaceOpeningHoursPeriodDetailCopyWith<$Res> {
  factory _$PlaceOpeningHoursPeriodDetailCopyWith(
          _PlaceOpeningHoursPeriodDetail value,
          $Res Function(_PlaceOpeningHoursPeriodDetail) _then) =
      __$PlaceOpeningHoursPeriodDetailCopyWithImpl;
  @override
  @useResult
  $Res call({int day, String time, String? date, bool? truncated});
}

/// @nodoc
class __$PlaceOpeningHoursPeriodDetailCopyWithImpl<$Res>
    implements _$PlaceOpeningHoursPeriodDetailCopyWith<$Res> {
  __$PlaceOpeningHoursPeriodDetailCopyWithImpl(this._self, this._then);

  final _PlaceOpeningHoursPeriodDetail _self;
  final $Res Function(_PlaceOpeningHoursPeriodDetail) _then;

  /// Create a copy of PlaceOpeningHoursPeriodDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? day = null,
    Object? time = null,
    Object? date = freezed,
    Object? truncated = freezed,
  }) {
    return _then(_PlaceOpeningHoursPeriodDetail(
      day: null == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      truncated: freezed == truncated
          ? _self.truncated
          : truncated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$PlacePhoto {
  /// The height of the photo.
  num get height;

  /// The width of the photo.
  num get width;

  /// The HTML attributions for the photo.
  @JsonKey(name: 'html_attributions')
  List<String> get htmlAttributions;

  /// A string used to identify the photo when you perform a Photo request.
  @JsonKey(name: 'photo_reference')
  String get photoReference;

  /// Create a copy of PlacePhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlacePhotoCopyWith<PlacePhoto> get copyWith =>
      _$PlacePhotoCopyWithImpl<PlacePhoto>(this as PlacePhoto, _$identity);

  /// Serializes this PlacePhoto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlacePhoto &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            const DeepCollectionEquality()
                .equals(other.htmlAttributions, htmlAttributions) &&
            (identical(other.photoReference, photoReference) ||
                other.photoReference == photoReference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, height, width,
      const DeepCollectionEquality().hash(htmlAttributions), photoReference);

  @override
  String toString() {
    return 'PlacePhoto(height: $height, width: $width, htmlAttributions: $htmlAttributions, photoReference: $photoReference)';
  }
}

/// @nodoc
abstract mixin class $PlacePhotoCopyWith<$Res> {
  factory $PlacePhotoCopyWith(
          PlacePhoto value, $Res Function(PlacePhoto) _then) =
      _$PlacePhotoCopyWithImpl;
  @useResult
  $Res call(
      {num height,
      num width,
      @JsonKey(name: 'html_attributions') List<String> htmlAttributions,
      @JsonKey(name: 'photo_reference') String photoReference});
}

/// @nodoc
class _$PlacePhotoCopyWithImpl<$Res> implements $PlacePhotoCopyWith<$Res> {
  _$PlacePhotoCopyWithImpl(this._self, this._then);

  final PlacePhoto _self;
  final $Res Function(PlacePhoto) _then;

  /// Create a copy of PlacePhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? htmlAttributions = null,
    Object? photoReference = null,
  }) {
    return _then(_self.copyWith(
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      htmlAttributions: null == htmlAttributions
          ? _self.htmlAttributions
          : htmlAttributions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      photoReference: null == photoReference
          ? _self.photoReference
          : photoReference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlacePhoto extends PlacePhoto {
  const _PlacePhoto(
      {required this.height,
      required this.width,
      @JsonKey(name: 'html_attributions')
      required final List<String> htmlAttributions,
      @JsonKey(name: 'photo_reference') required this.photoReference})
      : _htmlAttributions = htmlAttributions,
        super._();
  factory _PlacePhoto.fromJson(Map<String, dynamic> json) =>
      _$PlacePhotoFromJson(json);

  /// The height of the photo.
  @override
  final num height;

  /// The width of the photo.
  @override
  final num width;

  /// The HTML attributions for the photo.
  final List<String> _htmlAttributions;

  /// The HTML attributions for the photo.
  @override
  @JsonKey(name: 'html_attributions')
  List<String> get htmlAttributions {
    if (_htmlAttributions is EqualUnmodifiableListView)
      return _htmlAttributions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_htmlAttributions);
  }

  /// A string used to identify the photo when you perform a Photo request.
  @override
  @JsonKey(name: 'photo_reference')
  final String photoReference;

  /// Create a copy of PlacePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlacePhotoCopyWith<_PlacePhoto> get copyWith =>
      __$PlacePhotoCopyWithImpl<_PlacePhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlacePhotoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlacePhoto &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            const DeepCollectionEquality()
                .equals(other._htmlAttributions, _htmlAttributions) &&
            (identical(other.photoReference, photoReference) ||
                other.photoReference == photoReference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, height, width,
      const DeepCollectionEquality().hash(_htmlAttributions), photoReference);

  @override
  String toString() {
    return 'PlacePhoto(height: $height, width: $width, htmlAttributions: $htmlAttributions, photoReference: $photoReference)';
  }
}

/// @nodoc
abstract mixin class _$PlacePhotoCopyWith<$Res>
    implements $PlacePhotoCopyWith<$Res> {
  factory _$PlacePhotoCopyWith(
          _PlacePhoto value, $Res Function(_PlacePhoto) _then) =
      __$PlacePhotoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {num height,
      num width,
      @JsonKey(name: 'html_attributions') List<String> htmlAttributions,
      @JsonKey(name: 'photo_reference') String photoReference});
}

/// @nodoc
class __$PlacePhotoCopyWithImpl<$Res> implements _$PlacePhotoCopyWith<$Res> {
  __$PlacePhotoCopyWithImpl(this._self, this._then);

  final _PlacePhoto _self;
  final $Res Function(_PlacePhoto) _then;

  /// Create a copy of PlacePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? htmlAttributions = null,
    Object? photoReference = null,
  }) {
    return _then(_PlacePhoto(
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      htmlAttributions: null == htmlAttributions
          ? _self._htmlAttributions
          : htmlAttributions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      photoReference: null == photoReference
          ? _self.photoReference
          : photoReference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$PlusCode {
  /// The global_code is a 4 character area code and 6 character or longer
  /// local code (849VCWC8+R9).
  @JsonKey(name: 'global_code')
  String get globalCode;

  /// The compound_code is a 6 character or longer local code with an explicit
  /// location (CWC8+R9, Mountain View, CA, USA). Some APIs may return
  /// an empty string if the compound_code is not available.
  @JsonKey(name: 'compound_code')
  String? get compoundCode;

  /// Create a copy of PlusCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlusCodeCopyWith<PlusCode> get copyWith =>
      _$PlusCodeCopyWithImpl<PlusCode>(this as PlusCode, _$identity);

  /// Serializes this PlusCode to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlusCode &&
            (identical(other.globalCode, globalCode) ||
                other.globalCode == globalCode) &&
            (identical(other.compoundCode, compoundCode) ||
                other.compoundCode == compoundCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, globalCode, compoundCode);

  @override
  String toString() {
    return 'PlusCode(globalCode: $globalCode, compoundCode: $compoundCode)';
  }
}

/// @nodoc
abstract mixin class $PlusCodeCopyWith<$Res> {
  factory $PlusCodeCopyWith(PlusCode value, $Res Function(PlusCode) _then) =
      _$PlusCodeCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'global_code') String globalCode,
      @JsonKey(name: 'compound_code') String? compoundCode});
}

/// @nodoc
class _$PlusCodeCopyWithImpl<$Res> implements $PlusCodeCopyWith<$Res> {
  _$PlusCodeCopyWithImpl(this._self, this._then);

  final PlusCode _self;
  final $Res Function(PlusCode) _then;

  /// Create a copy of PlusCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalCode = null,
    Object? compoundCode = freezed,
  }) {
    return _then(_self.copyWith(
      globalCode: null == globalCode
          ? _self.globalCode
          : globalCode // ignore: cast_nullable_to_non_nullable
              as String,
      compoundCode: freezed == compoundCode
          ? _self.compoundCode
          : compoundCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlusCode extends PlusCode {
  const _PlusCode(
      {@JsonKey(name: 'global_code') required this.globalCode,
      @JsonKey(name: 'compound_code') this.compoundCode})
      : super._();
  factory _PlusCode.fromJson(Map<String, dynamic> json) =>
      _$PlusCodeFromJson(json);

  /// The global_code is a 4 character area code and 6 character or longer
  /// local code (849VCWC8+R9).
  @override
  @JsonKey(name: 'global_code')
  final String globalCode;

  /// The compound_code is a 6 character or longer local code with an explicit
  /// location (CWC8+R9, Mountain View, CA, USA). Some APIs may return
  /// an empty string if the compound_code is not available.
  @override
  @JsonKey(name: 'compound_code')
  final String? compoundCode;

  /// Create a copy of PlusCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlusCodeCopyWith<_PlusCode> get copyWith =>
      __$PlusCodeCopyWithImpl<_PlusCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlusCodeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlusCode &&
            (identical(other.globalCode, globalCode) ||
                other.globalCode == globalCode) &&
            (identical(other.compoundCode, compoundCode) ||
                other.compoundCode == compoundCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, globalCode, compoundCode);

  @override
  String toString() {
    return 'PlusCode(globalCode: $globalCode, compoundCode: $compoundCode)';
  }
}

/// @nodoc
abstract mixin class _$PlusCodeCopyWith<$Res>
    implements $PlusCodeCopyWith<$Res> {
  factory _$PlusCodeCopyWith(_PlusCode value, $Res Function(_PlusCode) _then) =
      __$PlusCodeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'global_code') String globalCode,
      @JsonKey(name: 'compound_code') String? compoundCode});
}

/// @nodoc
class __$PlusCodeCopyWithImpl<$Res> implements _$PlusCodeCopyWith<$Res> {
  __$PlusCodeCopyWithImpl(this._self, this._then);

  final _PlusCode _self;
  final $Res Function(_PlusCode) _then;

  /// Create a copy of PlusCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? globalCode = null,
    Object? compoundCode = freezed,
  }) {
    return _then(_PlusCode(
      globalCode: null == globalCode
          ? _self.globalCode
          : globalCode // ignore: cast_nullable_to_non_nullable
              as String,
      compoundCode: freezed == compoundCode
          ? _self.compoundCode
          : compoundCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PlaceReview {
  /// The name of the user who submitted the review.
  /// Anonymous reviews are attributed to "A Google user".
  @JsonKey(name: 'author_name')
  String get authorName;

  /// The user's overall rating for this place.
  /// This is a whole number, ranging from 1 to 5.
  int get rating;

  /// The time that the review was submitted in text, relative to
  /// the current time.
  @JsonKey(name: 'relative_time_description')
  String get relativeTimeDescription;

  /// The time that the review was submitted, measured in the number of
  /// seconds since since midnight, January 1, 1970 UTC.
  int get time;

  /// The URL to the user's Google Maps Local Guides profile, if available.
  @JsonKey(name: 'author_url')
  String? get authorUrl;

  /// An IETF language code indicating the language of the returned review.
  /// This field contains the main language tag only, and not the secondary
  /// tag indicating country or region. For example, all the English reviews
  /// are tagged as 'en', and not 'en-AU' or 'en-UK' and so on.
  /// This field is empty if there is only a rating with no review text.
  String? get language;

  /// An IETF language code indicating the original language of the review.
  /// If the review has been translated, then original_language != language.
  /// This field contains the main language tag only, and not the secondary
  /// tag indicating country or region. For example, all the English reviews
  /// are tagged as 'en', and not 'en-AU' or 'en-UK' and so on.
  /// This field is empty if there is only a rating with no review text.
  @JsonKey(name: 'original_language')
  String? get originalLanguage;

  /// The URL to the user's profile photo, if available.
  @JsonKey(name: 'profile_photo_url')
  String? get profilePhotoUrl;

  /// The user's review. When reviewing a location with Google Places, text
  /// reviews are considered optional. Therefore, this field may be empty.
  /// Note that this field may include simple HTML markup. For example, the
  /// entity reference &amp; may represent an ampersand character.
  String? get text;

  /// A boolean value indicating if the review was translated from the
  /// original language it was written in. If a review has been translated,
  /// corresponding to a value of true, Google recommends that you indicate
  /// this to your users. For example, you can add the following string,
  /// “Translated by Google”, to the review.
  bool? get translated;

  /// Create a copy of PlaceReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceReviewCopyWith<PlaceReview> get copyWith =>
      _$PlaceReviewCopyWithImpl<PlaceReview>(this as PlaceReview, _$identity);

  /// Serializes this PlaceReview to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceReview &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(
                    other.relativeTimeDescription, relativeTimeDescription) ||
                other.relativeTimeDescription == relativeTimeDescription) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.authorUrl, authorUrl) ||
                other.authorUrl == authorUrl) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.profilePhotoUrl, profilePhotoUrl) ||
                other.profilePhotoUrl == profilePhotoUrl) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translated, translated) ||
                other.translated == translated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      authorName,
      rating,
      relativeTimeDescription,
      time,
      authorUrl,
      language,
      originalLanguage,
      profilePhotoUrl,
      text,
      translated);

  @override
  String toString() {
    return 'PlaceReview(authorName: $authorName, rating: $rating, relativeTimeDescription: $relativeTimeDescription, time: $time, authorUrl: $authorUrl, language: $language, originalLanguage: $originalLanguage, profilePhotoUrl: $profilePhotoUrl, text: $text, translated: $translated)';
  }
}

/// @nodoc
abstract mixin class $PlaceReviewCopyWith<$Res> {
  factory $PlaceReviewCopyWith(
          PlaceReview value, $Res Function(PlaceReview) _then) =
      _$PlaceReviewCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'author_name') String authorName,
      int rating,
      @JsonKey(name: 'relative_time_description')
      String relativeTimeDescription,
      int time,
      @JsonKey(name: 'author_url') String? authorUrl,
      String? language,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
      String? text,
      bool? translated});
}

/// @nodoc
class _$PlaceReviewCopyWithImpl<$Res> implements $PlaceReviewCopyWith<$Res> {
  _$PlaceReviewCopyWithImpl(this._self, this._then);

  final PlaceReview _self;
  final $Res Function(PlaceReview) _then;

  /// Create a copy of PlaceReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorName = null,
    Object? rating = null,
    Object? relativeTimeDescription = null,
    Object? time = null,
    Object? authorUrl = freezed,
    Object? language = freezed,
    Object? originalLanguage = freezed,
    Object? profilePhotoUrl = freezed,
    Object? text = freezed,
    Object? translated = freezed,
  }) {
    return _then(_self.copyWith(
      authorName: null == authorName
          ? _self.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      relativeTimeDescription: null == relativeTimeDescription
          ? _self.relativeTimeDescription
          : relativeTimeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      authorUrl: freezed == authorUrl
          ? _self.authorUrl
          : authorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _self.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhotoUrl: freezed == profilePhotoUrl
          ? _self.profilePhotoUrl
          : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      translated: freezed == translated
          ? _self.translated
          : translated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceReview extends PlaceReview {
  const _PlaceReview(
      {@JsonKey(name: 'author_name') required this.authorName,
      required this.rating,
      @JsonKey(name: 'relative_time_description')
      required this.relativeTimeDescription,
      required this.time,
      @JsonKey(name: 'author_url') this.authorUrl,
      this.language,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl,
      this.text,
      this.translated})
      : super._();
  factory _PlaceReview.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewFromJson(json);

  /// The name of the user who submitted the review.
  /// Anonymous reviews are attributed to "A Google user".
  @override
  @JsonKey(name: 'author_name')
  final String authorName;

  /// The user's overall rating for this place.
  /// This is a whole number, ranging from 1 to 5.
  @override
  final int rating;

  /// The time that the review was submitted in text, relative to
  /// the current time.
  @override
  @JsonKey(name: 'relative_time_description')
  final String relativeTimeDescription;

  /// The time that the review was submitted, measured in the number of
  /// seconds since since midnight, January 1, 1970 UTC.
  @override
  final int time;

  /// The URL to the user's Google Maps Local Guides profile, if available.
  @override
  @JsonKey(name: 'author_url')
  final String? authorUrl;

  /// An IETF language code indicating the language of the returned review.
  /// This field contains the main language tag only, and not the secondary
  /// tag indicating country or region. For example, all the English reviews
  /// are tagged as 'en', and not 'en-AU' or 'en-UK' and so on.
  /// This field is empty if there is only a rating with no review text.
  @override
  final String? language;

  /// An IETF language code indicating the original language of the review.
  /// If the review has been translated, then original_language != language.
  /// This field contains the main language tag only, and not the secondary
  /// tag indicating country or region. For example, all the English reviews
  /// are tagged as 'en', and not 'en-AU' or 'en-UK' and so on.
  /// This field is empty if there is only a rating with no review text.
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;

  /// The URL to the user's profile photo, if available.
  @override
  @JsonKey(name: 'profile_photo_url')
  final String? profilePhotoUrl;

  /// The user's review. When reviewing a location with Google Places, text
  /// reviews are considered optional. Therefore, this field may be empty.
  /// Note that this field may include simple HTML markup. For example, the
  /// entity reference &amp; may represent an ampersand character.
  @override
  final String? text;

  /// A boolean value indicating if the review was translated from the
  /// original language it was written in. If a review has been translated,
  /// corresponding to a value of true, Google recommends that you indicate
  /// this to your users. For example, you can add the following string,
  /// “Translated by Google”, to the review.
  @override
  final bool? translated;

  /// Create a copy of PlaceReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceReviewCopyWith<_PlaceReview> get copyWith =>
      __$PlaceReviewCopyWithImpl<_PlaceReview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceReviewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceReview &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(
                    other.relativeTimeDescription, relativeTimeDescription) ||
                other.relativeTimeDescription == relativeTimeDescription) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.authorUrl, authorUrl) ||
                other.authorUrl == authorUrl) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.profilePhotoUrl, profilePhotoUrl) ||
                other.profilePhotoUrl == profilePhotoUrl) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translated, translated) ||
                other.translated == translated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      authorName,
      rating,
      relativeTimeDescription,
      time,
      authorUrl,
      language,
      originalLanguage,
      profilePhotoUrl,
      text,
      translated);

  @override
  String toString() {
    return 'PlaceReview(authorName: $authorName, rating: $rating, relativeTimeDescription: $relativeTimeDescription, time: $time, authorUrl: $authorUrl, language: $language, originalLanguage: $originalLanguage, profilePhotoUrl: $profilePhotoUrl, text: $text, translated: $translated)';
  }
}

/// @nodoc
abstract mixin class _$PlaceReviewCopyWith<$Res>
    implements $PlaceReviewCopyWith<$Res> {
  factory _$PlaceReviewCopyWith(
          _PlaceReview value, $Res Function(_PlaceReview) _then) =
      __$PlaceReviewCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'author_name') String authorName,
      int rating,
      @JsonKey(name: 'relative_time_description')
      String relativeTimeDescription,
      int time,
      @JsonKey(name: 'author_url') String? authorUrl,
      String? language,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
      String? text,
      bool? translated});
}

/// @nodoc
class __$PlaceReviewCopyWithImpl<$Res> implements _$PlaceReviewCopyWith<$Res> {
  __$PlaceReviewCopyWithImpl(this._self, this._then);

  final _PlaceReview _self;
  final $Res Function(_PlaceReview) _then;

  /// Create a copy of PlaceReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authorName = null,
    Object? rating = null,
    Object? relativeTimeDescription = null,
    Object? time = null,
    Object? authorUrl = freezed,
    Object? language = freezed,
    Object? originalLanguage = freezed,
    Object? profilePhotoUrl = freezed,
    Object? text = freezed,
    Object? translated = freezed,
  }) {
    return _then(_PlaceReview(
      authorName: null == authorName
          ? _self.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      relativeTimeDescription: null == relativeTimeDescription
          ? _self.relativeTimeDescription
          : relativeTimeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      authorUrl: freezed == authorUrl
          ? _self.authorUrl
          : authorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _self.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhotoUrl: freezed == profilePhotoUrl
          ? _self.profilePhotoUrl
          : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      translated: freezed == translated
          ? _self.translated
          : translated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
