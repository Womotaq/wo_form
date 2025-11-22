import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

export 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;

class PresentationCubit extends Cubit<WoFormPresentation> {
  PresentationCubit() : super(WoFormPresentation.page);

  void toggle() => emit(
        state == WoFormPresentation.page
            ? WoFormPresentation.bottomSheet
            : WoFormPresentation.page,
      );
}
