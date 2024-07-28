// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_base_app/config/helper/api_helper.dart' as _i637;
import 'package:flutter_base_app/config/services/call_api_service.dart'
    as _i1055;
import 'package:flutter_base_app/data/repository/app_repository_impl.dart'
    as _i603;
import 'package:flutter_base_app/domain/entities/global.dart' as _i46;
import 'package:flutter_base_app/domain/repository/app_repository.dart'
    as _i171;
import 'package:flutter_base_app/presentation/pages/movie/detail/movie_detail_cubit.dart'
    as _i497;
import 'package:flutter_base_app/presentation/pages/movie/movie_cubit.dart'
    as _i302;
import 'package:flutter_base_app/presentation/pages/tv_show/detail/tv_show_detail_cubit.dart'
    as _i783;
import 'package:flutter_base_app/presentation/pages/tv_show/tv_show_cubit.dart'
    as _i526;
import 'package:flutter_base_app/presentation/pages/watchlist/watchlist_cubit.dart'
    as _i666;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i637.ApiHelper>(() => _i637.ApiHelper());
  gh.lazySingleton<_i1055.CallApiService>(() => _i1055.CallApiService());
  gh.lazySingleton<_i46.Global>(() => _i46.Global());
  gh.lazySingleton<_i302.MovieCubit>(() => _i302.MovieCubit());
  gh.lazySingleton<_i497.MovieDetailCubit>(() => _i497.MovieDetailCubit());
  gh.lazySingleton<_i526.TvShowCubit>(() => _i526.TvShowCubit());
  gh.lazySingleton<_i783.TvShowDetailCubit>(() => _i783.TvShowDetailCubit());
  gh.lazySingleton<_i666.WatchListCubit>(() => _i666.WatchListCubit());
  gh.lazySingleton<_i171.AppRepository>(() => _i603.AppRepositoryImpl());
  return getIt;
}
