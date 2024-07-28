import 'package:flutter_base_app/config/services/injection.dart';
import 'package:flutter_base_app/config/util/constant.dart';
import 'package:flutter_base_app/config/util/utility.dart';
import 'package:flutter_base_app/data/model/movie.dart';
import 'package:flutter_base_app/domain/repository/app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'movie_state.dart';

@lazySingleton
class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());

  var appRepository = getIt<AppRepository>();

  void closeCubit() {
    close();
  }

  void getTopListMovie() async {
    try {
      emit(MovieLoading());
      var response = await appRepository.getListMovie(Constant.MOVTOPRATED);
      if (response.results!.isEmpty) {
        emit(MovieEmpty());
      } else {
        emit(MovieLoaded(movieResponse: response));
      }
    } catch (e) {
      emit(MovieError(error: Utility.handleErrorString(e.toString())));
    }
  }

  void getListMovie(String type) async {
    try {
      emit(ListMovieLoading());
      var response = await appRepository.getListMovie(type);
      if (response.results!.isEmpty) {
        emit(ListMovieEmpty());
      } else {
        emit(ListMovieLoaded(movieResponse: response));
      }
    } catch (e) {
      emit(ListMovieError(error: Utility.handleErrorString(e.toString())));
    }
  }

  void searchMovie(String query) async {
    try {
      emit(MovieSearchLoading());
      var response = await appRepository.getListSearchMovie(query);
      if (response.results!.isEmpty) {
        emit(MovieSearchEmpty());
      } else {
        emit(MovieSearchLoaded(movieResponse: response));
      }
    } catch (e) {
      emit(MovieSearchError(error: Utility.handleErrorString(e.toString())));
    }
  }

  void insertWatchListMovie(Movie movie) async {
    try {
      emit(MovieLoading());
      await appRepository.insertMovie(movie);
      emit(MovieSaved());
    } catch (e) {
      emit(MovieError(error: Utility.handleErrorString(e.toString())));
    }
  }
}
