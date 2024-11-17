import 'package:wo_form/wo_form.dart';

/// If you want to use MediaInput,
/// provide an implementation of this class at the top-level of your application
/// with a BlocProvider.
abstract class MediaService {
  const MediaService();

  Future<List<MediaFile>?> edit({
    required List<Media> medias,
    required double? aspectRatio,
    double? maxHeight,
    double? maxWidth,
  });

  Future<List<Media>> importMedias({
    required int? limit,
    required MediaImportSettings importSettings,
  });

  Future<MediaType> typeOfMediaUrl(MediaUrl media);

  Future<MediaUrl> upload({
    required Media media,
    required String path,
  });
}
