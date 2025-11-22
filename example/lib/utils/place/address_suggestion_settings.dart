import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/place/place_repository.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';

SuggestionsSettings<String> addressSuggestionsSettings(BuildContext context) =>
    SuggestionsSettings(
      loadSuggestions: (text) async => text == null
          ? []
          : await context.read<PlaceRepository>().fetchPredictions(text),
      suggestionTileBuilder: (suggestion) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            const Icon(Icons.location_on),
            const SizedBox(width: 7),
            Expanded(
              child: Text(
                suggestion,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      debounceDuration: Durations.short1,
    );
