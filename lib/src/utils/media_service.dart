import 'package:wo_form/wo_form.dart';

// TODO : DateTimeService.pickDate

/// If you want to use MediaInput,
/// provide an implementation of this class at the top-level of your application
/// with a BlocProvider.
abstract class MediaService {
  const MediaService();

  Future<MediaType> typeOfMediaUrl(MediaUrl media);

  Future<MediaUrl> upload({
    required Media media,
    required String path,
  });
}
