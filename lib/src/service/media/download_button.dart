import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:http/http.dart' as http;
import 'package:universal_html/html.dart' as html;
import 'package:wo_form/wo_form.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({required this.image, super.key});

  final Media image;

  @override
  Widget build(BuildContext context) {
    if (image.urlOrPath.isEmpty) return const SizedBox.shrink();

    return OutlinedButton.icon(
      label: const Text('Télécharger'),
      icon: const Icon(Icons.download),
      onPressed: _downloadImage,
    );
  }

  Future<void> _downloadImage() async {
    try {
      final filename = image.name ?? 'image.png';
      if (kIsWeb) {
        final response = await http.get(Uri.parse(image.urlOrPath));
        final bytes = response.bodyBytes;

        final blob = html.Blob([bytes]);
        final url2 = html.Url.createObjectUrlFromBlob(blob);

        html.AnchorElement(href: url2)
          ..setAttribute('download', filename)
          ..click();

        html.Url.revokeObjectUrl(url2);
      } else {
        final path = '${Directory.systemTemp.path}/$filename';
        await Dio().download(image.urlOrPath, path);
        await Gal.putImage(path, album: 'AppName'); // TODO : AppName
      }
    } catch (e) {
      if (kDebugMode) print(e);
    }
  }
}
