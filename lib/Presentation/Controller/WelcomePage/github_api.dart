import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert' as convert;

final class GithubApi {
  final url = Uri.parse('https://github.com/Ramses-dev-software/notebook_web_flutter');

  Future<String> fetchData() async {
    final response = await http.get(url);

    if(response.statusCode == 200) {
      return convert.jsonDecode(response.body)['title'];
    }
    else {
      return 'Error: ${response.statusCode}';
    }
  }

  Future<void> openUrlFromApi(BuildContext context) async {
    try {
      final urlString = await fetchData();
    final Uri uri = Uri.parse(urlString);

    if(!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: No se pudo abrir el enlace...'))
      );
     }
    } catch(error) {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $error'))
      );
    }
  } 
}