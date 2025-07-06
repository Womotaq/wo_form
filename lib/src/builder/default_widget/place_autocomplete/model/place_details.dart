class PlaceDetails {
  PlaceDetails({this.result, this.status});

  PlaceDetails.fromJson(Map<String, dynamic> json) {
    result = json['result'] != null
        ? Result.fromJson(json['result'] as Map<String, dynamic>)
        : null;
    status = json['status'] as String?;
  }
  Result? result;
  String? status;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    if (result != null) {
      data['result'] = result!.toJson();
    }
    data['status'] = status;
    return data;
  }
}

class Result {
  Result({
    this.addressComponents,
    this.adrAddress,
    this.formattedAddress,
    this.geometry,
    this.icon,
    this.name,
    this.photos,
    this.placeId,
    this.reference,
    this.scope,
    this.types,
    this.url,
    this.utcOffset,
    this.vicinity,
    this.website,
  });

  Result.fromJson(Map<String, dynamic> json) {
    final addressComponentsJson = json['address_components'];
    if (addressComponentsJson is List) {
      addressComponents = [];
      for (final v in addressComponentsJson) {
        addressComponents!
            .add(AddressComponents.fromJson(v as Map<String, dynamic>));
      }
    }
    adrAddress = json['adr_address'] as String?;
    formattedAddress = json['formatted_address'] as String?;
    geometry = json['geometry'] != null
        ? Geometry.fromJson(json['geometry'] as Map<String, dynamic>)
        : null;
    icon = json['icon'] as String?;
    name = json['name'] as String?;
    final photosJson = json['photos'];
    if (photosJson is List) {
      photos = [];
      for (final v in photosJson) {
        photos!.add(Photos.fromJson(v as Map<String, dynamic>));
      }
    }
    placeId = json['place_id'] as String?;
    reference = json['reference'] as String?;
    scope = json['scope'] as String?;
    types = (json['types'] as List).cast<String>();
    url = json['url'] as String?;
    utcOffset = json['utc_offset'] as int?;
    vicinity = json['vicinity'] as String?;
    website = json['website'] as String?;
  }
  List<AddressComponents>? addressComponents;
  String? adrAddress;
  String? formattedAddress;
  Geometry? geometry;
  String? icon;
  String? name;
  List<Photos>? photos;
  String? placeId;
  String? reference;
  String? scope;
  List<String>? types;
  String? url;
  int? utcOffset;
  String? vicinity;
  String? website;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (addressComponents != null) {
      data['address_components'] =
          addressComponents!.map((v) => v.toJson()).toList();
    }
    data['adr_address'] = adrAddress;
    data['formatted_address'] = formattedAddress;
    if (geometry != null) {
      data['geometry'] = geometry!.toJson();
    }
    data['icon'] = icon;
    data['name'] = name;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    data['place_id'] = placeId;
    data['reference'] = reference;
    data['scope'] = scope;
    data['types'] = types;
    data['url'] = url;
    data['utc_offset'] = utcOffset;
    data['vicinity'] = vicinity;
    data['website'] = website;
    return data;
  }
}

class AddressComponents {
  AddressComponents({this.longName, this.shortName, this.types});

  AddressComponents.fromJson(Map<String, dynamic> json) {
    longName = json['long_name'] as String?;
    shortName = json['short_name'] as String?;
    types = (json['types'] as List).cast<String>();
  }
  String? longName;
  String? shortName;
  List<String>? types;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['long_name'] = longName;
    data['short_name'] = shortName;
    data['types'] = types;
    return data;
  }
}

class Geometry {
  Geometry({this.location, this.viewport});

  Geometry.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? Location.fromJson(json['location'] as Map<String, dynamic>)
        : null;
    viewport = json['viewport'] != null
        ? Viewport.fromJson(json['viewport'] as Map<String, dynamic>)
        : null;
  }
  Location? location;
  Viewport? viewport;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    if (viewport != null) {
      data['viewport'] = viewport!.toJson();
    }
    return data;
  }
}

class Location {
  Location({this.lat, this.lng});

  Location.fromJson(Map<String, dynamic> json) {
    if (json['lat'] != null) {
      lat = double.parse(json['lat'].toString());
    }
    if (json['lng'] != null) {
      lng = double.parse(json['lng'].toString());
    }
  }
  double? lat;
  double? lng;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lat'] = lat;
    data['lng'] = lng;
    return data;
  }
}

class Viewport {
  Viewport({this.northeast, this.southwest});

  Viewport.fromJson(Map<String, dynamic> json) {
    northeast = json['northeast'] != null
        ? Location.fromJson(json['northeast'] as Map<String, dynamic>)
        : null;
    southwest = json['southwest'] != null
        ? Location.fromJson(json['southwest'] as Map<String, dynamic>)
        : null;
  }
  Location? northeast;
  Location? southwest;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (northeast != null) {
      data['northeast'] = northeast!.toJson();
    }
    if (southwest != null) {
      data['southwest'] = southwest!.toJson();
    }
    return data;
  }
}

class Photos {
  Photos({this.height, this.htmlAttributions, this.photoReference, this.width});

  Photos.fromJson(Map<String, dynamic> json) {
    height = json['height'] as int?;
    htmlAttributions = (json['html_attributions'] as List).cast<String>();
    photoReference = json['photo_reference'] as String?;
    width = json['width'] as int?;
  }
  int? height;
  List<String>? htmlAttributions;
  String? photoReference;
  int? width;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['height'] = height;
    data['html_attributions'] = htmlAttributions;
    data['photo_reference'] = photoReference;
    data['width'] = width;
    return data;
  }
}
