import 'package:warehouse/features/donations/repo/donations_repository.dart';

import 'package:warehouse/features/donations/cubits/delete_donation_cubit/delete_donation_cubit.dart';

import 'package:warehouse/features/donations/cubits/update_donation_cubit/update_donation_cubit.dart';

import 'package:warehouse/features/donations/cubits/create_donation_cubit/create_donation_cubit.dart';

import 'package:warehouse/features/donations/cubits/get_donations_cubit/get_donations_cubit.dart';

import 'package:warehouse/features/categories/repo/categories_repository.dart';

import 'package:warehouse/features/categories/cubits/update_category_cubit/update_category_cubit.dart';

import 'package:warehouse/features/categories/cubits/create_category_cubit/create_category_cubit.dart';

import 'package:warehouse/features/categories/cubits/get_categories_cubit/get_categories_cubit.dart';

import 'package:warehouse/features/login/repo/login_repository.dart';

import 'package:warehouse/features/login/cubits/login_cubit/login_cubit.dart';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/cache_service.dart';
import '../services/end_points.dart';
import '../services/interceptors/auth_interceptor.dart';

import 'api_services.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  // It will be created only ONCE

  sl.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );

  sl.registerLazySingleton<CacheService>(
    () => CacheService(sharedPreferences: sl()),
  );

  sl.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(cacheService: sl()),
  );

  sl.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {'Accept': 'application/json'},
      ),
    );
    dio.interceptors.add(sl<AuthInterceptor>());
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: false,
        error: true,
      ),
    );

    return dio;
  });

  sl.registerLazySingleton<ApiService>(() => ApiService(dio: sl()));
  sl.registerFactory(() => LoginCubit(sl()));
  sl.registerLazySingleton(() => LoginRepository(sl()));
  sl.registerFactory(() => GetCategoriesCubit(sl()));
  sl.registerFactory(() => CreateCategoryCubit(sl()));
  sl.registerFactory(() => UpdateCategoryCubit(sl()));
  sl.registerLazySingleton(() => CategoriesRepository(sl()));
  sl.registerFactory(() => GetDonationsCubit(sl()));
  sl.registerFactory(() => CreateDonationCubit(sl()));
  sl.registerFactory(() => UpdateDonationCubit(sl()));
  sl.registerFactory(() => DeleteDonationCubit(sl()));
  sl.registerLazySingleton(() => DonationsRepository(sl()));
}
