// Credits : https://pub.dev/packages/google_places_flutter

enum PlaceType {
  geocode('geocode'),
  address('address'),
  establishment('establishment'),
  region('(region)'), // NOTE : This seems broken
  cities('(cities)');

  const PlaceType(this.apiString);

  final String apiString;
}
