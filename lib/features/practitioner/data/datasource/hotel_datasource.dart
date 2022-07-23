// import 'dart:convert';
//
// import 'package:dio/dio.dart';
// import 'package:particle_test/core/error/failures.dart';
// import 'package:particle_test/core/network/api_endpoint.dart';
// import 'package:particle_test/core/network/dio_client.dart';
//
// import '../models/hotels.dart';
//
// abstract class HotelRemoteDatasource {
//   Future<Hotels> getHotelList();
// }
//
// class HotelRemoteDatasourceImpl implements HotelRemoteDatasource {
//   /// dio client for making network operations
//   final DioClient client;
//
//   HotelRemoteDatasourceImpl(this.client);
//
//   @override
//   Future<Hotels> getHotelList() async {
//     try {
//       Response response = await client.get(APIEndpoint.getHotelsList);
//       return Hotels.fromJson(json.decode(response.data));
//     } catch (e, s) {
//       print(s);
//       throw ServerFailure(e.toString());
//     }
//   }
// }
