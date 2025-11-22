import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/app.dart';
import 'package:wo_form_example/utils/capitalized.dart';
import 'package:wo_form_example/utils/place/address_suggestion_settings.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';
import 'package:wo_form_example/utils/regex_pattern.dart';

// No hot reload without this widget
class InputsFormPage extends StatelessWidget {
  const InputsFormPage({super.key});

  @override
  Widget build(BuildContext context) => InputsForm(context);
}

class InputsForm extends WoForm {
  InputsForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            presentation: context.read<PresentationCubit>().state,
          ),
          children: [
            StringInput(
              id: 'email',
              regexPattern: RegexPattern.email.value,
              uiSettings: StringInputUiSettings.email(
                invalidRegexMessage: 'Ne semble pas être une addresse mail.',
                labelText: 'Email',
                hintText: 'Ex : johnbrezh@gmail.com',
                prefixIcon: const Icon(Icons.email),
                prefixIconLocation: FieldElementLocation.inside,
              ),
            ),
            StringInput(
              id: 'password',
              regexPattern: RegexPattern.password.value,
              uiSettings: StringInputUiSettings.password(
                invalidRegexMessage: 'Pas assez sécurisé.',
                labelText: 'Mot de passe',
                prefixIcon: const Icon(Icons.key),
                prefixIconLocation: FieldElementLocation.inside,
              ),
            ),
            StringInput(
              id: 'phone',
              initialValue: '0123456789',
              uiSettings: StringInputUiSettings.phone(
                labelText: 'Numéro de téléphone',
                helperText: 'Ne sera pas revendu à une '
                    'application tierce. Promis.',
                helperMaxLines: 2,
                prefixIcon: const Icon(Icons.phone),
              ),
            ),
            StringInput<String>(
              id: 'address',
              suggestionsSettings: addressSuggestionsSettings(context),
              uiSettings: const StringInputUiSettings(
                labelText: 'Adresse',
                labelLocation: FieldElementLocation.outside,
                helperText: 'Le titre et sous le sous-titre peuvent'
                    ' aussi se placer au-dessus du champ.',
                helperLocation: FieldElementLocation.outside,
                hintText: 'Paris, Lyon...',
                prefixIcon: Icon(Icons.location_city),
              ),
            ),
            WidgetNode(builder: (context) => const SizedBox(height: 16)),
            const StringInput(
              id: 'collapsed',
              uiSettings: StringInputUiSettings(
                collapsed: true,
                hintText: 'Collapsed TextField',
              ),
            ),
            WidgetNode(builder: (context) => const SizedBox(height: 16)),
            const BooleanInput(
              id: 'boolTrailing',
              uiSettings: BooleanInputUiSettings(
                labelText: 'Champ booléen simple',
                helperText: 'Sous-titre',
              ),
            ),
            const BooleanInput(
              id: 'boolLeading',
              uiSettings: BooleanInputUiSettings(
                labelText: 'Champ_booléen_simple_avec_un_titre_très_long',
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            const BooleanInput(
              id: 'boolTrailingCheckbox',
              uiSettings: BooleanInputUiSettings(
                labelText: 'Champ booléen simple',
                helperText: 'Sous-titre',
                controlType: BooleanFieldControlType.checkbox,
              ),
            ),
            const BooleanInput(
              id: 'boolLeadingCheckbox',
              uiSettings: BooleanInputUiSettings(
                labelText: 'Champ_booléen_simple_avec_un_titre_très_long',
                controlAffinity: ListTileControlAffinity.leading,
                controlType: BooleanFieldControlType.checkbox,
              ),
            ),
            const NumInput(
              id: 'numSelector2',
              minBound: 10,
              maxBound: 100,
              initialValue: 50,
              uiSettings: NumInputUiSettings(
                labelText: 'Nombre',
                unit: Text('€'),
              ),
            ),
            const NumInput(
              id: 'numSelector',
              minBound: 10,
              maxBound: 100,
              initialValue: 50,
              uiSettings: NumInputUiSettings(
                headerFlex: -1,
                labelText: 'Champ_nombre_simple_avec_un_titre_très_long',
                unit: Text(r'$'),
              ),
            ),
            const NumInput(
              id: 'numSliderFlex',
              uiSettings: NumInputUiSettings(
                labelText: 'Nombre',
                headerFlex: 0,
                style: NumInputStyle.slider,
              ),
            ),
            const NumInput(
              id: 'numSlider',
              uiSettings: NumInputUiSettings(
                labelText: 'Nombre',
                style: NumInputStyle.slider,
              ),
            ),
            SelectInput<ThemeMode>(
              id: 'selectDefault',
              minCount: 1,
              maxCount: 1,
              initialValues: [context.read<DarkModeCubit>().state],
              availibleValues: ThemeMode.values,
              onValueChanged: (values) => values?.firstOrNull == null
                  ? null
                  : context.read<DarkModeCubit>().set(values!.first),
              uiSettings: SelectInputUiSettings(
                childrenVisibility: ChildrenVisibility.whenAsked,
                headerFlex: 10,
                labelText: 'Theme',
                helperText: 'Default',
                valueBuilder: (value) => Text(
                  value?.name.capitalized() ?? 'Select a theme',
                ),
              ),
            ),
            SelectInput<ThemeMode>(
              id: 'selectModal',
              minCount: 1,
              maxCount: 1,
              initialValues: [context.read<DarkModeCubit>().state],
              availibleValues: ThemeMode.values,
              onValueChanged: (values) => values?.firstOrNull == null
                  ? null
                  : context.read<DarkModeCubit>().set(values!.first),
              uiSettings: SelectInputUiSettings(
                childrenVisibility: ChildrenVisibility.whenAsked,
                headerFlex: 10,
                labelText: 'Theme',
                helperText: 'Modal',
                valueBuilder: (value) => Text(
                  value?.name.capitalized() ?? 'Select a theme',
                ),
                openChildren: Push.modalBottomSheet,
              ),
            ),
            SelectInput<ThemeMode>(
              id: 'selectModalScrollable',
              minCount: 1,
              maxCount: 1,
              initialValues: [context.read<DarkModeCubit>().state],
              availibleValues: ThemeMode.values,
              onValueChanged: (values) => values?.firstOrNull == null
                  ? null
                  : context.read<DarkModeCubit>().set(values!.first),
              uiSettings: SelectInputUiSettings(
                childrenVisibility: ChildrenVisibility.whenAsked,
                flex: 1,
                headerFlex: 10,
                labelText: 'Theme',
                helperText: 'Modal scrollable',
                valueBuilder: (value) => Text(
                  value?.name.capitalized() ?? 'Select a theme',
                ),
                openChildren: Push.modalBottomSheet,
              ),
            ),
          ],
        );
}
