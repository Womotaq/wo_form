## Unreleased

- Renamed `WoForm.hydratationId` to `WoForm.persistenceSettings`, which takes a `PersistenceSettings(key: ...)`
- Saved values are cleared after a successful submit, unless `clearOnSubmit: false`
- Fields whose values can't be saved are skipped and logged, the other fields are still saved
- Restored fields are no longer reset to their initial value
- `isPure` treats empty values as no value: null, blank strings, and collections of them, see `WoFormValues.isEmptyValue`. A field typed in then erased no longer counts as a change
- A persisted form only saves a draft: values that hold no change aren't saved, and a saved draft is deleted with its status and locks once the values come back to their initial content, or when the form opens without one
- Added `WoFormValuesCubit.hasSavedDraft` and `WoFormValuesCubit.hasUnsavedChanges`, to tell whether leaving keeps a draft or loses changes, like local files a draft can't hold
- Added `WoForm.hasSavedDraft` and `WoForm.readSavedValues`, to read a form's draft without opening it
- When a `StringField`'s value changes from elsewhere, its cursor moves to the end of the new text, instead of being lost

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
