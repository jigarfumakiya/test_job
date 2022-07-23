import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/hotels.dart';

abstract class HotelRepositories {
  Future<Either<Failures, Hotels>> getHotelsList();
}
