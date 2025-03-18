import 'package:wo_form/wo_form.dart';

/// If you want to use MediaInput,
/// provide an implementation of this class at the top-level of your application
/// with a BlocProvider.
abstract class MediaService {
  const MediaService();

  Future<MediaType> typeOfMediaUrl(MediaUrl media);

  Future<MediaUrl> upload({
    required Media media,
    required String path,
    int? maxSize,
    bool addFileNameToPath = false,
  });
}
