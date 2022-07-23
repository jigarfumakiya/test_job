// service locator
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - NumberTrivia
  // sl.registerFactory(() => LoginBloc(loginUseCase: sl()));
  // sl.registerFactory(() => HotelsBloc(getHotelsUseCase: sl()));
  //
  // //! Use cases
  // sl.registerLazySingleton(() => FacebookLoginUseCase(loginRepositories: sl()));
  // sl.registerLazySingleton(() => GetHotelsUseCase(hotelsRepositories: sl()));
  //
  // //! Repository
  // sl.registerLazySingleton<LoginRepositories>(
  //     () => LoginRepositoriesImpl(loginRemoteDatasource: sl()));
  // sl.registerLazySingleton<HotelRepositories>(
  //     () => HotelRepositoriesImpl(hotelRemoteDatasource: sl()));
  //
  // //! Data sources
  // sl.registerLazySingleton<LoginRemoteDatasource>(
  //     () => LoginRemoteDatasourceImpl());
  // sl.registerLazySingleton<HotelRemoteDatasource>(
  //     () => HotelRemoteDatasourceImpl(sl()));
  //
  // //! External
  // sl.registerLazySingleton(() => DioClient());
}
