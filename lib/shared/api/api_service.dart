import 'dart:convert';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService()
      : _dio = Dio(
          BaseOptions(
            baseUrl: 'https://graphql.anilist.co',
            headers: {"Content-Type": "application/json"},
          ),
        );

  Future<Map<String, dynamic>> performQuery(
    String query,
    Map<String, dynamic> variables,
  ) async {
    try {
      final response = await _dio.post(
        '',
        data: jsonEncode({"query": query, "variables": variables}),
      );
      if (response.statusCode == 200) {
        return response.data['data'];
      } else {
        throw ApiException(response.data['errors'] ?? 'Unknown error occurred');
      }
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}

class ApiException implements Exception {
  final String message;
  ApiException(this.message);

  @override
  String toString() => 'ApiException: $message';
}
