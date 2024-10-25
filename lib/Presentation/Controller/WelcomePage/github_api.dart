import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class ApiUrl {
  static final String github = "https://github.com/Ramses-dev-software/notebook_web_flutter";
}

class GithubApi {
  final url = Uri.parse(ApiUrl.github); 

  Future<void> openUrlFromApi(BuildContext context) async {
    try {
      // Intenta abrir la URL directamente
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: No se pudo abrir el enlace...')),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $error')),
      );
    }
  }
}
