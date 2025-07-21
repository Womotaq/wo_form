// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_details.freezed.dart';
part 'place_details.g.dart';

@freezed
abstract class PlaceDetailsResponse with _$PlaceDetailsResponse {
  const factory PlaceDetailsResponse({
    /// May contain a set of attributions about this listing which must be
    /// displayed to the user (some listings may not have attribution).
    @JsonKey(name: 'html_attributions') required List<String> htmlAttributions,

    /// Contains the detailed information about the place requested.
    required PlaceDetails result,

    /// Contains the status of the request, and may contain debugging
    /// information to help you track down why the request failed.
    required PlacesDetailsStatus status,

    // When the service returns additional information about the request
    // specification, there may be an additional info_messages field within the
    // response object. This field is only returned for successful requests.
    // It may not always be returned, and its content is subject to change.
    @JsonKey(name: 'info_messages') List<String>? infoMessages,
  }) = _PlaceDetailsResponse;

  /// Required for the override getter
  const PlaceDetailsResponse._();

  factory PlaceDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsResponseFromJson(json);
}

enum PlacesDetailsStatus {
  /// The API request was successful.
  OK,

  /// The referenced location, place_id, was valid but no longer refers to a
  /// valid result. This may occur if the establishment is no longer in
  /// business.
  ZERO_RESULTS,

  /// The referenced location, place_id, was not found in the Places database.
  NOT_FOUND,

  /// The API request was malformed.
  INVALID_REQUEST,

  /// Indicates any of the following:
  /// - You have exceeded the QPS limits.
  /// - Billing has not been enabled on your account.
  /// - The monthly $200 credit, or a self-imposed usage cap, has been exceeded.
  /// - The provided method of payment is no longer valid
  ///   (for example, a credit card has expired).
  OVER_QUERY_LIMIT,

  /// Your request was denied, generally because:
  /// - The request is missing an API key.
  /// - The key parameter is invalid.
  REQUEST_DENIED,

  /// Indicates an unknown error.
  UNKNOWN_ERROR,
}

@freezed
abstract class PlaceDetails with _$PlaceDetails {
  const factory PlaceDetails({
    /// An array containing the separate components applicable to this address.
    @JsonKey(name: 'address_components')
    List<PlaceAddressComponent>? addressComponents,

    /// A representation of the place's address in the adr microformat.
    /// See : https://microformats.org/wiki/adr
    @JsonKey(name: 'adr_address') String? adrAddress,

    /// Indicates the operational status of the place, if it is a business.
    /// If no data exists, business_status is not returned.
    ///
    /// The allowed values include: OPERATIONAL, CLOSED_TEMPORARILY, and CLOSED_PERMANENTLY
    @JsonKey(name: 'business_status') String? businessStatus,

    /// Specifies if the business supports curbside pickup.
    @JsonKey(name: 'curbside_pickup') bool? curbsidePickup,

    /// Contains the hours of operation for the next seven days (including
    /// today). The time period starts at midnight on the date of the request
    /// and ends at 11:59 pm six days later. This field includes
    /// the special_days subfield of all hours, set for dates that have
    /// exceptional hours.
    @JsonKey(name: 'current_opening_hours')
    PlaceOpeningHours? currentOpeningHours,

    /// Specifies if the business supports delivery.
    bool? delivery,

    /// Specifies if the business supports indoor or outdoor seating options.
    @JsonKey(name: 'dine_in') bool? dineIn,

    /// Contains a summary of the place. A summary is comprised of a textual
    /// overview, and also includes the language code for these if applicable.
    /// Summary text must be presented as-is and can not be modified or altered.
    @JsonKey(name: 'editorial_summary') PlaceEditorialSummary? editorialSummary,

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
    @JsonKey(name: 'formatted_address') String? formattedAddress,

    /// Contains the place's phone number in its local format.
    @JsonKey(name: 'formatted_phone_number') String? formattedPhoneNumber,

    /// Contains the location and viewport for the location.
    Geometry? geometry,

    /// Contains the URL of a suggested icon which may be displayed to the user
    /// when indicating this result on a map.
    String? icon,

    /// Contains the default HEX color code for the place's category.
    @JsonKey(name: 'icon_background_color') String? iconBackgroundColor,

    /// Contains the URL of a recommended icon, minus the .svg or .png file
    /// type extension.
    @JsonKey(name: 'icon_mask_base_uri') String? iconMaskBaseUri,

    /// Contains the place's phone number in international format.
    /// International format includes the country code, and is prefixed with
    /// the plus, +, sign. For example, the international_phone_number for
    /// Google's Sydney, Australia office is +61 2 9374 4000.
    @JsonKey(name: 'international_phone_number')
    String? internationalPhoneNumber,

    /// Contains the human-readable name for the returned result. For
    /// establishment results, this is usually the canonicalized business name.
    String? name,

    /// Contains the regular hours of operation.
    @JsonKey(name: 'opening_hours') PlaceOpeningHours? openingHours,

    /// An array of photo objects, each containing a reference to an image.
    /// A request may return up to ten photos. More information about place
    /// photos and how you can use the images in your application can be found
    /// in the Place Photos documentation.
    List<PlacePhoto>? photos,

    /// A textual identifier that uniquely identifies a place.
    @JsonKey(name: 'place_id') String? placeId,

    /// An encoded location reference, derived from latitude and longitude
    /// coordinates, that represents an area: 1/8000th of a degree by
    /// 1/8000th of a degree (about 14m x 14m at the equator) or smaller.
    /// Plus codes can be used as a replacement for street addresses in places
    /// where they do not exist (where buildings are not numbered or streets
    /// are not named).
    @JsonKey(name: 'plus_code') PlusCode? plusCode,

    /// The price level of the place, on a scale of 0 to 4. The exact amount
    /// indicated by a specific value will vary from region to region.
    /// Price levels are interpreted as follows:
    /// - 0 Free
    /// - 1 Inexpensive
    /// - 2 Moderate
    /// - 3 Expensive
    /// - 4 Very Expensive
    @JsonKey(name: 'price_level') int? priceLevel,

    /// Contains the place's rating, from 1.0 to 5.0, based on aggregated user
    /// reviews.
    double? rating,

    /// Specifies if the place supports reservations.
    bool? reservable,

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
    List<PlaceReview>? reviews,

    /// Contains an array of entries for the next seven days including
    /// information about secondary hours of a business. Secondary hours are
    /// different from a business's main hours. For example, a restaurant can
    /// specify drive through hours or delivery hours as its secondary hours.
    /// This field populates the type subfield, which draws from a predefined
    /// list of opening hours types (such as DRIVE_THROUGH, PICKUP, or TAKEOUT)
    /// based on the types of the place. This field includes the special_days
    /// subfield of all hours, set for dates that have exceptional hours.
    @JsonKey(name: 'secondary_opening_hours')
    List<PlaceOpeningHours>? secondaryOpeningHours,

    /// Specifies if the place serves beer.
    @JsonKey(name: 'serves_beer') bool? servesBeer,

    /// Specifies if the place serves breakfast.
    @JsonKey(name: 'serves_breakfast') bool? servesBreakfast,

    /// Specifies if the place serves brunch.
    @JsonKey(name: 'serves_brunch') bool? servesBrunch,

    /// Specifies if the place serves dinner.
    @JsonKey(name: 'serves_dinner') bool? servesDinner,

    /// Specifies if the place serves lunch.
    @JsonKey(name: 'serves_lunch') bool? servesLunch,

    /// Specifies if the place serves vegetarian food.
    @JsonKey(name: 'serves_vegetarian_food') bool? servesVegetarianFood,

    /// Specifies if the place serves wine.
    @JsonKey(name: 'serves_wine') bool? servesWine,

    /// Specifies if the business supports takeout.
    bool? takeout,

    /// Contains an array of feature types describing the given result.
    /// See : https://developers.google.com/maps/documentation/places/web-service/legacy/supported_types#table2
    List<String>? types,

    /// Contains the URL of the official Google page for this place.
    /// This will be the Google-owned page that contains the best available
    /// information about the place. Applications must link to or embed this
    /// page on any screen that shows detailed results about the place to the
    /// user.
    String? url,

    /// The total number of reviews, with or without text, for this place.
    @JsonKey(name: 'user_ratings_total') int? userRatingsTotal,

    /// Contains the number of minutes this place’s current timezone is offset
    /// from UTC. For example, for places in Sydney, Australia during daylight
    /// saving time this would be 660 (+11 hours from UTC), and for places in
    /// California outside of daylight saving time this would be -480 (-8 hours
    /// from UTC).
    @JsonKey(name: 'utc_offset') int? utcOffset,

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
    String? vicinity,

    /// The authoritative website for this place, such as a business' homepage.
    String? website,

    /// Specifies if the place has an entrance that is wheelchair-accessible.
    @JsonKey(name: 'wheelchair_accessible_entrance')
    bool? wheelchairAccessibleEntrance,
  }) = _PlaceDetails;

  /// Required for the override getter
  const PlaceDetails._();

  factory PlaceDetails.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsFromJson(json);
}

@freezed
abstract class PlaceAddressComponent with _$PlaceAddressComponent {
  const factory PlaceAddressComponent({
    /// The full text description or name of the address component as returned
    /// by the Geocoder.
    @JsonKey(name: 'long_name') required String longName,

    /// An abbreviated textual name for the address component, if available.
    /// For example, an address component for the state of Alaska may have a
    /// long_name of "Alaska" and a short_name of "AK" using the 2-letter postal
    /// abbreviation.
    @JsonKey(name: 'short_name') required String shortName,

    /// An array indicating the type of the address component.
    /// See : https://developers.google.com/maps/documentation/places/web-service/supported_types
    required List<String> types,
  }) = _PlaceAddressComponent;

  /// Required for the override getter
  const PlaceAddressComponent._();

  factory PlaceAddressComponent.fromJson(Map<String, dynamic> json) =>
      _$PlaceAddressComponentFromJson(json);
}

@freezed
abstract class PlaceEditorialSummary with _$PlaceEditorialSummary {
  const factory PlaceEditorialSummary({
    /// The language of the previous fields.
    String? language,

    /// A medium-length textual summary of the place.
    String? overview,
  }) = _PlaceEditorialSummary;

  /// Required for the override getter
  const PlaceEditorialSummary._();

  factory PlaceEditorialSummary.fromJson(Map<String, dynamic> json) =>
      _$PlaceEditorialSummaryFromJson(json);
}

@freezed
abstract class Geometry with _$Geometry {
  const factory Geometry({
    /// An object describing a specific location with Latitude and Longitude in
    /// decimal degrees.
    required LatLngLiteral location,

    /// A rectangle in geographical coordinates from points at the southwest and
    /// northeast corners.
    required Bounds viewport,
  }) = _Geometry;

  /// Required for the override getter
  const Geometry._();

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
abstract class LatLngLiteral with _$LatLngLiteral {
  const factory LatLngLiteral({
    /// Latitude in decimal degrees.
    @JsonKey(name: 'lat') required double latitude,

    /// Longitude in decimal degrees.
    @JsonKey(name: 'lng') required double longitude,
  }) = _LatLngLiteral;

  /// Required for the override getter
  const LatLngLiteral._();

  factory LatLngLiteral.fromJson(Map<String, dynamic> json) =>
      _$LatLngLiteralFromJson(json);
}

@freezed
abstract class Bounds with _$Bounds {
  const factory Bounds({
    required LatLngLiteral northeast,
    required LatLngLiteral southwest,
  }) = _Bounds;

  /// Required for the override getter
  const Bounds._();

  factory Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);
}

@freezed
abstract class PlaceOpeningHours with _$PlaceOpeningHours {
  const factory PlaceOpeningHours({
    /// A boolean value indicating if the place is open at the current time.
    @JsonKey(name: 'open_now') bool? openNow,

    /// An array of opening periods covering seven days, starting from Sunday,
    /// in chronological order.
    List<PlaceOpeningHoursPeriod>? periods,

    /// An array of up to seven entries corresponding to the next seven days.
    @JsonKey(name: 'special_days') List<PlaceSpecialDay>? specialDays,

    /// A type string used to identify the type of secondary hours
    /// (for example, DRIVE_THROUGH, HAPPY_HOUR, DELIVERY, TAKEOUT, KITCHEN,
    /// BREAKFAST, LUNCH, DINNER, BRUNCH, PICKUP, SENIOR_HOURS).
    /// Set for secondary_opening_hours only.
    String? type,

    /// An array of strings describing in human-readable text the hours
    /// of the place.
    @JsonKey(name: 'weekday_text') String? weekdayText,
  }) = _PlaceOpeningHours;

  /// Required for the override getter
  const PlaceOpeningHours._();

  factory PlaceOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursFromJson(json);
}

@freezed
abstract class PlaceOpeningHoursPeriod with _$PlaceOpeningHoursPeriod {
  const factory PlaceOpeningHoursPeriod({
    /// Contains a pair of day and time objects describing when the place opens.
    required PlaceOpeningHoursPeriodDetail open,

    /// May contain a pair of day and time objects describing when the place
    /// closes. If a place is always open, the close section will be missing
    /// from the response. Clients can rely on always-open being represented
    /// as an open period containing day with value 0 and time with value
    /// 0000, and no close.
    PlaceOpeningHoursPeriodDetail? close,
  }) = _PlaceOpeningHoursPeriod;

  /// Required for the override getter
  const PlaceOpeningHoursPeriod._();

  factory PlaceOpeningHoursPeriod.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursPeriodFromJson(json);
}

@freezed
abstract class PlaceSpecialDay with _$PlaceSpecialDay {
  const factory PlaceSpecialDay({
    /// A date expressed in RFC3339 format in the local timezone for the place,
    /// for example 2010-12-31
    String? date,

    /// True if there are exceptional hours for this day. If true, this means
    /// that there is at least one exception for this day. Exceptions cause
    /// different values to occur in the subfields of current_opening_hours and
    /// secondary_opening_hours such as periods, weekday_text, open_now.
    /// The exceptions apply to the hours, and the hours are used to generate
    /// the other fields.
    @JsonKey(name: 'exceptional_hours') bool? exceptionalHours,
  }) = _PlaceSpecialDay;

  /// Required for the override getter
  const PlaceSpecialDay._();

  factory PlaceSpecialDay.fromJson(Map<String, dynamic> json) =>
      _$PlaceSpecialDayFromJson(json);
}

@freezed
abstract class PlaceOpeningHoursPeriodDetail
    with _$PlaceOpeningHoursPeriodDetail {
  const factory PlaceOpeningHoursPeriodDetail({
    /// A number from 0–6, corresponding to the days of the week, starting on
    /// Sunday. For example, 2 means Tuesday.
    required int day,

    /// May contain a time of day in 24-hour hhmm format. Values are in the
    /// range 0000–2359. The time will be reported in the place’s time zone.
    required String time,

    /// A date expressed in RFC3339 format in the local timezone for the place,
    /// for example 2010-12-31.
    String? date,

    /// True if a given period was truncated due to a seven-day cutoff, where
    /// the period starts before midnight on the date of the request and/or
    /// ends at or after midnight on the last day. This property indicates that
    /// the period for open or close can extend past this seven-day cutoff.
    bool? truncated,
  }) = _PlaceOpeningHoursPeriodDetail;

  /// Required for the override getter
  const PlaceOpeningHoursPeriodDetail._();

  factory PlaceOpeningHoursPeriodDetail.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursPeriodDetailFromJson(json);
}

@freezed
abstract class PlacePhoto with _$PlacePhoto {
  const factory PlacePhoto({
    /// The height of the photo.
    required num height,

    /// The width of the photo.
    required num width,

    /// The HTML attributions for the photo.
    @JsonKey(name: 'html_attributions') required List<String> htmlAttributions,

    /// A string used to identify the photo when you perform a Photo request.
    @JsonKey(name: 'photo_reference') required String photoReference,
  }) = _PlacePhoto;

  /// Required for the override getter
  const PlacePhoto._();

  factory PlacePhoto.fromJson(Map<String, dynamic> json) =>
      _$PlacePhotoFromJson(json);
}

@freezed
abstract class PlusCode with _$PlusCode {
  const factory PlusCode({
    /// The global_code is a 4 character area code and 6 character or longer
    /// local code (849VCWC8+R9).
    @JsonKey(name: 'global_code') required String globalCode,

    /// The compound_code is a 6 character or longer local code with an explicit
    /// location (CWC8+R9, Mountain View, CA, USA). Some APIs may return
    /// an empty string if the compound_code is not available.
    @JsonKey(name: 'compound_code') String? compoundCode,
  }) = _PlusCode;

  /// Required for the override getter
  const PlusCode._();

  factory PlusCode.fromJson(Map<String, dynamic> json) =>
      _$PlusCodeFromJson(json);
}

@freezed
abstract class PlaceReview with _$PlaceReview {
  const factory PlaceReview({
    /// The name of the user who submitted the review.
    /// Anonymous reviews are attributed to "A Google user".
    @JsonKey(name: 'author_name') required String authorName,

    /// The user's overall rating for this place.
    /// This is a whole number, ranging from 1 to 5.
    required int rating,

    /// The time that the review was submitted in text, relative to
    /// the current time.
    @JsonKey(name: 'relative_time_description')
    required String relativeTimeDescription,

    /// The time that the review was submitted, measured in the number of
    /// seconds since since midnight, January 1, 1970 UTC.
    required int time,

    /// The URL to the user's Google Maps Local Guides profile, if available.
    @JsonKey(name: 'author_url') String? authorUrl,

    /// An IETF language code indicating the language of the returned review.
    /// This field contains the main language tag only, and not the secondary
    /// tag indicating country or region. For example, all the English reviews
    /// are tagged as 'en', and not 'en-AU' or 'en-UK' and so on.
    /// This field is empty if there is only a rating with no review text.
    String? language,

    /// An IETF language code indicating the original language of the review.
    /// If the review has been translated, then original_language != language.
    /// This field contains the main language tag only, and not the secondary
    /// tag indicating country or region. For example, all the English reviews
    /// are tagged as 'en', and not 'en-AU' or 'en-UK' and so on.
    /// This field is empty if there is only a rating with no review text.
    @JsonKey(name: 'original_language') String? originalLanguage,

    /// The URL to the user's profile photo, if available.
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,

    /// The user's review. When reviewing a location with Google Places, text
    /// reviews are considered optional. Therefore, this field may be empty.
    /// Note that this field may include simple HTML markup. For example, the
    /// entity reference &amp; may represent an ampersand character.
    String? text,

    /// A boolean value indicating if the review was translated from the
    /// original language it was written in. If a review has been translated,
    /// corresponding to a value of true, Google recommends that you indicate
    /// this to your users. For example, you can add the following string,
    /// “Translated by Google”, to the review.
    bool? translated,
  }) = _PlaceReview;

  /// Required for the override getter
  const PlaceReview._();

  factory PlaceReview.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewFromJson(json);
}
