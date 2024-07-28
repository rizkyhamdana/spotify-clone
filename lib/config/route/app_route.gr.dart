// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:flutter_base_app/data/model/movie.dart' as _i11;
import 'package:flutter_base_app/data/model/tv_show.dart' as _i12;
import 'package:flutter_base_app/presentation/pages/home/home_view.dart' as _i1;
import 'package:flutter_base_app/presentation/pages/login/login_view.dart'
    as _i2;
import 'package:flutter_base_app/presentation/pages/movie/detail/movie_detail_view.dart'
    as _i3;
import 'package:flutter_base_app/presentation/pages/movie/movie_view.dart'
    as _i4;
import 'package:flutter_base_app/presentation/pages/splashscreen/splash_screen_view.dart'
    as _i5;
import 'package:flutter_base_app/presentation/pages/tv_show/detail/tv_show_detail_view.dart'
    as _i6;
import 'package:flutter_base_app/presentation/pages/tv_show/tv_show_view.dart'
    as _i7;
import 'package:flutter_base_app/presentation/pages/watchlist/watchlist_view.dart'
    as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomePage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    LoginPage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    MovieDetailPage.name: (routeData) {
      final args = routeData.argsAs<MovieDetailPageArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.MovieDetailPage(
          key: args.key,
          movie: args.movie,
          fromWatchList: args.fromWatchList,
        ),
      );
    },
    MoviePage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MoviePage(),
      );
    },
    SplashRoutePage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SplashScreenPage(),
      );
    },
    TvShowDetailPage.name: (routeData) {
      final args = routeData.argsAs<TvShowDetailPageArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.TvShowDetailPage(
          key: args.key,
          tvShow: args.tvShow,
          fromWatchList: args.fromWatchList,
        ),
      );
    },
    TvShowPage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.TvShowPage(),
      );
    },
    WatchlistPage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.WatchlistPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomePage extends _i9.PageRouteInfo<void> {
  const HomePage({List<_i9.PageRouteInfo>? children})
      : super(
          HomePage.name,
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginPage extends _i9.PageRouteInfo<void> {
  const LoginPage({List<_i9.PageRouteInfo>? children})
      : super(
          LoginPage.name,
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MovieDetailPage]
class MovieDetailPage extends _i9.PageRouteInfo<MovieDetailPageArgs> {
  MovieDetailPage({
    _i10.Key? key,
    required _i11.Movie movie,
    bool fromWatchList = false,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          MovieDetailPage.name,
          args: MovieDetailPageArgs(
            key: key,
            movie: movie,
            fromWatchList: fromWatchList,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailPage';

  static const _i9.PageInfo<MovieDetailPageArgs> page =
      _i9.PageInfo<MovieDetailPageArgs>(name);
}

class MovieDetailPageArgs {
  const MovieDetailPageArgs({
    this.key,
    required this.movie,
    this.fromWatchList = false,
  });

  final _i10.Key? key;

  final _i11.Movie movie;

  final bool fromWatchList;

  @override
  String toString() {
    return 'MovieDetailPageArgs{key: $key, movie: $movie, fromWatchList: $fromWatchList}';
  }
}

/// generated route for
/// [_i4.MoviePage]
class MoviePage extends _i9.PageRouteInfo<void> {
  const MoviePage({List<_i9.PageRouteInfo>? children})
      : super(
          MoviePage.name,
          initialChildren: children,
        );

  static const String name = 'MoviePage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SplashScreenPage]
class SplashRoutePage extends _i9.PageRouteInfo<void> {
  const SplashRoutePage({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoutePage.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoutePage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.TvShowDetailPage]
class TvShowDetailPage extends _i9.PageRouteInfo<TvShowDetailPageArgs> {
  TvShowDetailPage({
    _i10.Key? key,
    required _i12.TvShow tvShow,
    bool fromWatchList = false,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          TvShowDetailPage.name,
          args: TvShowDetailPageArgs(
            key: key,
            tvShow: tvShow,
            fromWatchList: fromWatchList,
          ),
          initialChildren: children,
        );

  static const String name = 'TvShowDetailPage';

  static const _i9.PageInfo<TvShowDetailPageArgs> page =
      _i9.PageInfo<TvShowDetailPageArgs>(name);
}

class TvShowDetailPageArgs {
  const TvShowDetailPageArgs({
    this.key,
    required this.tvShow,
    this.fromWatchList = false,
  });

  final _i10.Key? key;

  final _i12.TvShow tvShow;

  final bool fromWatchList;

  @override
  String toString() {
    return 'TvShowDetailPageArgs{key: $key, tvShow: $tvShow, fromWatchList: $fromWatchList}';
  }
}

/// generated route for
/// [_i7.TvShowPage]
class TvShowPage extends _i9.PageRouteInfo<void> {
  const TvShowPage({List<_i9.PageRouteInfo>? children})
      : super(
          TvShowPage.name,
          initialChildren: children,
        );

  static const String name = 'TvShowPage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.WatchlistPage]
class WatchlistPage extends _i9.PageRouteInfo<void> {
  const WatchlistPage({List<_i9.PageRouteInfo>? children})
      : super(
          WatchlistPage.name,
          initialChildren: children,
        );

  static const String name = 'WatchlistPage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
