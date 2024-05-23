class WoFormInputError {
  const WoFormInputError({
    required this.inputId,
    required this.code,
  });

  const WoFormInputError.empty({
    required this.inputId,
  }) : code = emptyCode;

  const WoFormInputError.invalid({
    required this.inputId,
  }) : code = invalidCode;

  const WoFormInputError.maxBound({
    required this.inputId,
  }) : code = maxBoundCode;

  const WoFormInputError.minBound({
    required this.inputId,
  }) : code = minBoundCode;

  final String? inputId;
  final String code;

  static const emptyCode = 'empty';
  static const invalidCode = 'invalid';
  static const maxBoundCode = 'maxBound';
  static const minBoundCode = 'minBound';
}
