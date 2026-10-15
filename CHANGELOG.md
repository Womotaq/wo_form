## 2.1.0

- Breaking: Replaced WoForm.hydratationId with WoForm.persistenceSettings (see PersistenceSettings)
- Breaking: Moved SearchScreen.onNotFound to SearchSettings.onNotFound
- Reworked persistence: only drafts are saved, and they are cleared after a successful submit (see PersistenceSettings.clearOnSubmit)
- Added WoForm.hasSavedDraft, WoForm.readSavedValues, WoFormValuesCubit.hasSavedDraft and WoFormValuesCubit.hasUnsavedChanges
- isPure treats empty values as no value (see WoFormValues.isEmptyValue)
- A StringField with a flex of 1 expands to fill its available height
- Solved persistence issues
- Solved StringField issues with text selection and cursor position

## 2.0.6

- Added few customization options
- Solved minor issues

## 2.0.5

- Enhanced date picking
- Added 15+ new customization options
- Solved minor issues

## 2.0.4

- Solved minor bugs

## 2.0.3

- Fixed WoFormValues.isPure()

## 2.0.2

- Solved minor bugs

## 2.0.1

- Added InputsNodeUiSettings.helperMaxLines
- Hidden bottom bar when keyboard is visible
- Added bypassLock in WoFormValuesCubit.onValueChanged

## 2.0.0

- Merged wo_form_service into wo_form (DateTimeService, GooglePlaces, media handling)
- Reworked MultistepSettings and navigation
- Reworked SuggestionsTextField (replaced PlaceAutocompleteTextField)
- Reworked WoFormL10n localization
- Added 50+ new customization options (SearchSettings, WoFormPresentation, FieldElementLocation, etc.)
- Improved date/time picker UI and keyboard handling
- Fixed issues with flex layout, ConditionnalNode, DynamicInputsNode, and SelectInput
- Better form state management and TextField unfocus behavior
- Breaking: Removed WoFormNodeMixin/WoFormInputMixin, merged wo_form_service, changed APIs
- Moved demo back in example folder

## 1.3.2

- Upgraded dependencies

## 1.3.1

- Solved issues

## 1.3.0

- Added MediaInput, DateTimeInput and DurationInput
- Added SubmitButtonPosition.floating
- Moved example to wo_form_example
- Minor bug fixes and various improvements

## 1.2.1

- Solved minor issue with pathIsVisited

## 1.2.0

- Added persistence (see WoForm.hydratationId)
- Added ConditionnalNode
- Reworked QuizSettings
- Added a default phone field
- Added DynamicInputsNodeUiSettings.reorderable
- Solved issues

## 1.1.0

- BREAKING CHANGES : see RootNode
- Added FutureNode

## 1.0.1

- Added scaffoldBuilder
- Minor bug fixes

## 1.0.0

- Initial release !
