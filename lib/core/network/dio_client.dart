// import 'dart:io';
//
// import 'package:dio/adapter.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
//
// const _defaultConnectTimeout = 8000;
// const _defaultReceiveTimeout = Duration.millisecondsPerMinute;
//
// class DioClient {
//   final Dio _dio = Dio();
//
//   DioClient() {
//     _dio
//       ..options.connectTimeout = _defaultConnectTimeout
//       ..options.receiveTimeout = _defaultReceiveTimeout
//       ..httpClientAdapter
//       ..options.responseType = ResponseType.json
//       ..options.headers;
//     (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (HttpClient dioClient) {
//       dioClient.badCertificateCallback =
//           ((X509Certificate cert, String host, int port) => true);
//       return dioClient;
//     };
//     if (kDebugMode) {
//       _dio.interceptors.add(LogInterceptor(
//           responseBody: true,
//           error: true,
//           requestHeader: false,
//           responseHeader: false,
//           request: false,
//           requestBody: true));
//     }
//   }
//
//   Future<Response> get(
//     String uri, {
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       var response = await _dio.get(
//         uri,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response;
//     } on SocketException catch (e) {
//       throw SocketException(e.toString());
//     } on FormatException catch (_) {
//       throw const FormatException("Unable to process the data");
//     } catch (error) {
//       rethrow;
//     }
//   }
//
//   Future<Response> post(
//     String uri, {
//     data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//     CancelToken? cancelToken,
//     ProgressCallback? onSendProgress,
//     ProgressCallback? onReceiveProgress,
//   }) async {
//     try {
//       var response = await _dio.post(
//         uri,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onSendProgress: onSendProgress,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response;
//     } on FormatException catch (_) {
//       throw const FormatException("Unable to process the data");
//     } catch (error) {
//       rethrow;
//     }
//   }
// }
