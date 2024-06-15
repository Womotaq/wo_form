class WoFieldData<T, U> {
  const WoFieldData({
    required this.inputPath,
    required this.value,
    required this.errorText,
    required this.uiSettings,
    required this.onValueChanged,
  });

  final String inputPath;
  final T? value;
  final String? errorText;
  final U uiSettings;
  final void Function(T?) onValueChanged;
}
