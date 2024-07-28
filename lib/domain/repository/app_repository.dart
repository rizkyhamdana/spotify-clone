import 'package:flutter_base_app/data/model/movie.dart';
import 'package:flutter_base_app/data/model/tv_show.dart';

abstract class AppRepository {
  Future<MovieResponse> getListMovie(String type);
  Future<MovieResponse> getListSearchMovie(String query);
  Future<List<Movie>> getMovieWatchlist();
  Future<TvShowResponse> getListTvShow(String type);
  Future<TvShowResponse> getListSearchTvShow(String query);
  Future<List<TvShow>> getTvShowWatchList();

  Future<void> insertMovie(Movie movie);
  Future<bool> getMovieById(int id);
  Future<bool> deleteMovie(int id);
  Future<void> insertTvShow(TvShow tvShow);
  Future<bool> getTvShowById(int id);
  Future<bool> deleteTvShow(int id);
}
