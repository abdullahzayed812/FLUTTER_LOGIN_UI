import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/services/apis/endpoints.dart';

class ApiServices {
  ApiServices._privateApiServicesConstructor()
      : _dio = Dio(
          BaseOptions(
            baseUrl: Endpoints.baseUrl,
            connectTimeout: const Duration(milliseconds: 5000),
            receiveTimeout: const Duration(milliseconds: 3000),
            headers: {
              "Accept": "application/json",
              "Content-Type": "application/json",
              "Authorization": "Bearer token",
            },
          ),
        ) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          debugPrint("Request: ${options.method}\t\t${options.path}");
          handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          debugPrint("Response status code: ${response.statusCode}\t\t${response.data}");
          handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          debugPrint("Error: ${error.message}");
          handler.next(error);
        },
      ),
    );
  }

  static final ApiServices _instance = ApiServices._privateApiServicesConstructor();

  static ApiServices get instance => _instance;

  final Dio _dio;

  Future<Response> getRequest(String endpoint, Map<String, dynamic>? queryParameters, Object? data) async {
    try {
      Response response = await _dio.get(endpoint, queryParameters: queryParameters, data: data);

      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response> postRequest(String endpoint, Map<String, dynamic>? queryParameters, Object? data) async {
    try {
      Response response = await _dio.post(endpoint, queryParameters: queryParameters, data: data);

      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response> putRequest(String endpoint, Object? data) async {
    try {
      Response response = await _dio.put(endpoint, data: data);

      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response> deleteRequest(String endpoint, Map<String, dynamic> queryParameters) async {
    try {
      Response response = await _dio.delete(endpoint, queryParameters: queryParameters);

      return response;
    } on DioException {
      rethrow;
    }
  }
}
