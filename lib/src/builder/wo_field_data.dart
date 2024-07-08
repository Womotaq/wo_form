class WoFieldData<I, T, U> {
  /// I : input
  /// T : value
  /// U : uiSettings
  const WoFieldData({
    required this.path,
    required this.input,
    required this.value,
    required this.errorText,
    required this.uiSettings,
    required this.onValueChanged,
  });

  final String path;
  final I input;
  final T? value;
  final String? errorText;
  final U uiSettings;

  /// Null means locked field
  final void Function(T?)? onValueChanged;
}
