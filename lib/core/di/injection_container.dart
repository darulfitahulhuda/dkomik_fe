import 'package:dkomik/presentation/bloc/detail_komik/detail_komik_tabbar/detail_komik_tabbar_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../presentation/bloc/main/main_page/main_page_bloc.dart';
import '../network/network.dart';

final di = GetIt.instance;

Future<void> init() async {
  /// Bloc
  di.registerFactory(() => DetailKomikTabbarBloc());
  di.registerFactory(() => MainPageBloc());

  /// Usecase
  // sl.registerLazySingleton(() => LoginUseCase(repository: sl()));

  /// Repositories
  // sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
  // remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));

  /// Remote Data Source
  //  sl.registerLazySingleton<AuthRemoteDataSource>(
  // () => AuthRemoteDataSourceImpl());

  /// Local Data Source

  /// External
  di.registerLazySingleton(() => NetworkUtils.client());
  di.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(di()));
  di.registerLazySingleton(() => InternetConnectionChecker());
}
// 