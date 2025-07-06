class PlacesAutocompleteResponse {
  PlacesAutocompleteResponse({this.predictions, this.status});

  PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) {
    final predictionsJson = json['predictions'];
    if (predictionsJson is List) {
      predictions = [];
      for (final v in predictionsJson) {
        predictions!.add(Prediction.fromJson(v as Map<String, dynamic>));
      }
    }
    status = json['status'] as String?;
  }

  List<Prediction>? predictions;
  String? status;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (predictions != null) {
      data['predictions'] = predictions!.map((v) => v.toJson()).toList();
    }
    data['status'] = status;
    return data;
  }
}

class Prediction {
  Prediction({
    this.description,
    this.id,
    this.matchedSubstrings,
    this.placeId,
    this.reference,
    this.structuredFormatting,
    this.terms,
    this.types,
    this.lat,
    this.lng,
  });

  Prediction.fromJson(Map<String, dynamic> json) {
    description = json['description'] as String?;
    id = json['id'] as String?;
    final matchedSubstringsJson = json['matched_substrings'];
    if (matchedSubstringsJson is List) {
      matchedSubstrings = [];
      for (final v in matchedSubstringsJson) {
        matchedSubstrings!
            .add(MatchedSubstrings.fromJson(v as Map<String, dynamic>));
      }
    }
    placeId = json['place_id'] as String?;
    reference = json['reference'] as String?;
    structuredFormatting = json['structured_formatting'] != null
        ? StructuredFormatting.fromJson(
            json['structured_formatting'] as Map<String, dynamic>)
        : null;
    final termsJson = json['terms'];
    if (termsJson is List) {
      terms = [];
      for (final v in termsJson) {
        terms!.add(Terms.fromJson(v as Map<String, dynamic>));
      }
    }
    types = (json['types'] as List).cast<String>();
    lat = json['lat'] as String?;
    lng = json['lng'] as String?;
  }
  String? description;
  String? id;
  List<MatchedSubstrings>? matchedSubstrings;
  String? placeId;
  String? reference;
  StructuredFormatting? structuredFormatting;
  List<Terms>? terms;
  List<String>? types;
  String? lat;
  String? lng;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['description'] = description;
    data['id'] = id;
    if (matchedSubstrings != null) {
      data['matched_substrings'] =
          matchedSubstrings!.map((v) => v.toJson()).toList();
    }
    data['place_id'] = placeId;
    data['reference'] = reference;
    if (structuredFormatting != null) {
      data['structured_formatting'] = structuredFormatting!.toJson();
    }
    if (terms != null) {
      data['terms'] = terms!.map((v) => v.toJson()).toList();
    }
    data['types'] = types;
    data['lat'] = lat;
    data['lng'] = lng;

    return data;
  }
}

class MatchedSubstrings {
  MatchedSubstrings({this.length, this.offset});

  MatchedSubstrings.fromJson(Map<String, dynamic> json) {
    length = json['length'] as int?;
    offset = json['offset'] as int?;
  }
  int? length;
  int? offset;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['length'] = length;
    data['offset'] = offset;
    return data;
  }
}

class StructuredFormatting {
  StructuredFormatting({this.mainText, this.secondaryText});

  StructuredFormatting.fromJson(Map<String, dynamic> json) {
    mainText = json['main_text'] as String?;

    secondaryText = json['secondary_text'] as String?;
  }
  String? mainText;

  String? secondaryText;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['main_text'] = mainText;
    data['secondary_text'] = secondaryText;
    return data;
  }
}

class Terms {
  Terms({this.offset, this.value});

  Terms.fromJson(Map<String, dynamic> json) {
    offset = json['offset'] as int?;
    value = json['value'] as String?;
  }
  int? offset;
  String? value;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['offset'] = offset;
    data['value'] = value;
    return data;
  }
}
