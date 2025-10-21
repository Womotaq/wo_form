import 'package:wo_form/wo_form.dart';

mixin PlaceRepositoryMixin {
  /// Your proxy for addresses autocompletion in string fields.
  ///
  /// The provided [input] is a string to add in the body. You also need
  /// to add you own google api key. Example :
  /// 'https://maps.googleapis.com/maps/api/place/autocomplete/json?key=${widget.googleAPIKey}&input=' + input
  Future<PlacesAutocompleteResponse> getPlacePredictions(String input);
}
