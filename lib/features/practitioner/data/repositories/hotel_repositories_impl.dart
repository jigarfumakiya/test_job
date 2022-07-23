// import 'package:dartz/dartz.dart';
// import 'package:particle_test/core/error/failures.dart';
// import 'package:particle_test/features/hotel/data/models/hotels.dart';
// import 'package:particle_test/features/hotel/domain/repositories/hotel_repositories.dart';
//
// import '../datasource/hotel_datasource.dart';
//
// class HotelRepositoriesImpl implements HotelRepositories {
//   final HotelRemoteDatasource hotelRemoteDatasource;
//
//   const HotelRepositoriesImpl({
//     required this.hotelRemoteDatasource,
//   });
//
//   @override
//   Future<Either<Failures, Hotels>> getHotelsList() async {
//     try {
//       return Right(await hotelRemoteDatasource.getHotelList());
//     } catch (e) {
//       return Left(ServerFailure(e.toString()));
//     }
//   }
// }
