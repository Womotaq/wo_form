import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:wo_form_example/utils/place/place_details.dart';
import 'package:wo_form_example/utils/place/place_prediction.dart';

class PlaceRepository {
  PlaceRepository() {
    if (kDebugMode) _callable.useFunctionsEmulator('localhost', 5001);
  }
  final FirebaseFunctions _callable =
      FirebaseFunctions.instanceFor(region: 'europe-west1');

  Future<List<String>> fetchPredictions(String text) =>
      getPlacePredictions('$text&language=${Intl.defaultLocale}').then(
        (response) => response.predictions
            .map((prediction) => prediction.description)
            .nonNulls
            .toList(),
      );

  /// The provided [input] is a string to add in the body. You also need
  /// to add you own google api key. Example :
  /// 'https://maps.googleapis.com/maps/api/place/autocomplete/json?key=${widget.googleAPIKey}&input=' + input
  Future<PlacesAutocompleteResponse> getPlacePredictions(String input) =>
      _callable
          .httpsCallable('requestedPlacePredictions')
          .call<Map<String, dynamic>>({'input': input}).then(
              (response) => PlacesAutocompleteResponse.fromJson(response.data));

  /// A proxy for longitude and latitude of addresses.
  ///
  /// The provided [placeId] is a string to add in the body. You also need
  /// to add you own google api key. Example :
  /// 'https://maps.googleapis.com/maps/api/place/details/json?key=${widget.googleAPIKey}&placeid=' + placeId
  Future<PlaceDetailsResponse> getPlaceDetails(String placeId) => _callable
      .httpsCallable('requestedPlaceDetails')
      .call<Map<String, dynamic>>({'placeId': placeId}).then(
          (response) => PlaceDetailsResponse.fromJson(response.data));
}
