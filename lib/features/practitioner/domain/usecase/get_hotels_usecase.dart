import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/hotels.dart';
import '../repositories/hotel_repositories.dart';

/// A facebook use case that extend generic class of use case.
class GetHotelsUseCase implements UseCase<Hotels, NoParams> {
  final HotelRepositories hotelsRepositories;

  GetHotelsUseCase({
    required this.hotelsRepositories,
  });

  @override
  Future<Either<Failures, Hotels>> call(NoParams params) {
    // TODO: implement call
    return hotelsRepositories.getHotelsList();
  }
}
