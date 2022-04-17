import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:clean_arch_flutter/layers/data/memory/in_memory_cache.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'commons/network/network_info.dart';
import 'layers/data/datasources/character_local_datasource.dart';
import 'layers/data/datasources/character_network_datasource.dart';
import 'layers/data/repositories/character_repository_impl.dart';
import 'layers/domain/repositories/character_repository.dart';
import 'layers/domain/usecases/get_all_characters.dart';
import 'layers/local/datasources/character_local_datasource_impl.dart';
import 'layers/network/datasources/character_network_datasource_impl.dart';
import 'layers/presentation/home/bloc/home_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  // * Presenter Layer
  // to BLOC version
  sl.registerFactory(
    () => HomeCubit(getAllCharacters: sl()),
  );

  // * Domain Layer
  sl.registerFactory(() => GetAllCharacters(charactersRepository: sl()));

  // * Data Layer
  sl.registerLazySingleton<CharacterRepository>(
    () => CharacterRepositoryImpl(
      localDatasource: sl(),
      networkDatasource: sl(),
      networkInfo: sl(),
      inMemoryCache: sl(),
    ),
  );
  sl.registerFactory(() => InMemoryCache());

  // * Network Layer
  sl.registerFactory<CharacterNetworkDatasource>(
      () => CharacterNetworkDatasourceImpl(client: sl()));

  // * Local Layer
  sl.registerFactory<CharacterLocalDatasource>(
      () => CharacterLocalDatasourceImpl(sharedPreferences: sl()));

  // * Commons
  sl.registerFactory<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // * External
  final sharedPref = await SharedPreferences.getInstance();
  sl.registerFactory(() => sharedPref);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
