import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/capitalized.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';

class TestSelectInputForm extends WoForm {
  TestSelectInputForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            presentation: context.read<PresentationCubit>().state,
            submitButtonPosition: SubmitButtonPosition.appBar,
          ),
          children: [
            SelectInput<ChildrenVisibility>(
              id: 'childrenVisibility',
              minCount: 1,
              maxCount: 1,
              initialValues: [ChildrenVisibility.whenAsked],
              availibleValues: ChildrenVisibility.values,
              uiSettings: SelectInputUiSettings(
                headerFlex: 11,
                labelText: 'See the options :',
                childrenVisibility: ChildrenVisibility.whenAsked,
                flex: 0,
                valueBuilder: (value) => value == null
                    ? const Text('Select a value')
                    : Text(value.name.capitalized()),
              ),
            ),
            ValueBuilderNode(
              id: 'builder',
              path: '#childrenVisibility',
              builder: (value) {
                final childrenVisibility =
                    (value as List<ChildrenVisibility>? ?? []).firstOrNull ??
                        ChildrenVisibility.whenAsked;

                return SelectInput<City>(
                  id: 'select',
                  maxCount: 1,
                  availibleValues: City.sortedValues,
                  uiSettings: SelectInputUiSettings(
                    headerFlex: 11,
                    labelText: 'Ville',
                    childrenVisibility: childrenVisibility,
                    valueBuilder: (value) => value == null
                        ? const Text('Select a value')
                        : Text(value.name.capitalized()),
                  ),
                );
              },
            ),
            ValueBuilderNode(
              id: 'builder3',
              path: '#childrenVisibility',
              builder: (value) {
                final childrenVisibility =
                    (value as List<ChildrenVisibility>? ?? []).firstOrNull ??
                        ChildrenVisibility.whenAsked;

                return InputsNode(
                  id: 'list',
                  children: [
                    SelectInput<City>(
                      id: 'searchDefault',
                      maxCount: 1,
                      availibleValues: City.sortedValues,
                      searchSettings: SearchSettings(
                        searchScore: (query, value) =>
                            query.searchScore(value.name),
                      ),
                      uiSettings: SelectInputUiSettings(
                        flex: childrenVisibility == ChildrenVisibility.always
                            ? 0
                            : 1,
                        headerFlex: 11,
                        labelText: 'Ville',
                        helperText: 'default search',
                        childrenVisibility: childrenVisibility,
                        valueBuilder: (value) => value == null
                            ? const Text('Select a value')
                            : Text(value.name.capitalized()),
                      ),
                    ),
                    SelectInput<City>(
                      id: 'searchPage',
                      maxCount: 1,
                      availibleValues: City.sortedValues,
                      searchSettings: SearchSettings(
                        searchScore: (query, value) =>
                            query.searchScore(value.name),
                      ),
                      uiSettings: SelectInputUiSettings(
                        flex: childrenVisibility == ChildrenVisibility.always
                            ? 0
                            : 1,
                        headerFlex: 11,
                        labelText: 'Ville',
                        helperText: 'page search',
                        childrenVisibility: childrenVisibility,
                        valueBuilder: (value) => value == null
                            ? const Text('Select a value')
                            : Text(value.name.capitalized()),
                        openChildren: Push.screen,
                      ),
                    ),
                    SelectInput<City>(
                      id: 'searchMenu',
                      maxCount: 1,
                      availibleValues: City.sortedValues,
                      searchSettings: SearchSettings(
                        searchScore: (query, value) =>
                            query.searchScore(value.name),
                      ),
                      uiSettings: SelectInputUiSettings(
                        flex: childrenVisibility == ChildrenVisibility.always
                            ? 0
                            : 1,
                        headerFlex: 11,
                        labelText: 'Ville',
                        helperText: 'menu search',
                        childrenVisibility: childrenVisibility,
                        valueBuilder: (value) => value == null
                            ? const Text('Select a value')
                            : Text(value.name.capitalized()),
                        openChildren: Push.menu,
                      ),
                    ),
                    SelectInput<City>(
                      id: 'searchAsync',
                      maxCount: 1,
                      minCount: 1,
                      searchSettings: SearchSettings(
                        loadAvailibleData: CityProviderExample.loadData,
                        searchScore: (query, value) =>
                            query.searchScore(value.name),
                      ),
                      uiSettings: SelectInputUiSettings(
                        flex: childrenVisibility == ChildrenVisibility.always
                            ? 0
                            : 1,
                        headerFlex: 11,
                        labelText: 'Ville',
                        helperText: 'default search (async)',
                        childrenVisibility: childrenVisibility,
                        valueBuilder: (value) => value == null
                            ? const Text('Select a value')
                            : Text(value.name.capitalized()),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        );
}

class CityProviderExample {
  static Future<List<City>> loadData(WoFormQuery query) async {
    await Future<void>.delayed(const Duration(seconds: 1));

    final scores = City.sortedValues
        .map((city) => (query.searchScore(city.name), city))
        .toList()
        .sortedBy<num>((data) => -data.$1);

    final results = scores.take(10).map((data) => data.$2).toList();

    return results;
  }
}

enum City {
  amsterdam,
  berlin,
  delhi,
  karachi,
  istambul,
  mexico,
  moscou,
  paris,
  pekin,
  shanghai,
  tokyo,
  london,
  madrid,
  rome,
  vienna,
  lisbon,
  prague,
  budapest,
  oslo,
  stockholm,
  helsinki,
  copenhagen,
  dublin,
  brussels,
  warsaw,
  athens,
  zurich,
  geneva,
  venice,
  milan,
  barcelona,
  seoul,
  taipei,
  manila,
  jakarta,
  bangkok,
  hanoi,
  sydney,
  melbourne,
  auckland,
  toronto,
  montreal,
  vancouver,
  chicago,
  boston,
  miami,
  houston,
  atlanta,
  denver,
  seattle,
  phoenix,
  cairo,
  nairobi,
  lagos,
  accra,
  tunis,
  casablanca,
  dubai,
  doha,
  riyadh,
  tehran,
  baghdad,
  kabul;

  static List<City> get sortedValues =>
      List.from(values)..sort((a, b) => a.name.compareTo(b.name));
}
