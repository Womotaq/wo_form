enum PlaceType {
  geocode("geocode"),
  address("address"),
  establishment("establishment"),

  /// Broken ? A valid api key gets a 403 error.
  region("(region)"),
  cities("(cities)");

  const PlaceType(this.apiString);

  final String apiString;
}
