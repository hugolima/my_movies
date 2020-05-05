import 'package:flutter/material.dart';
import 'package:my_movies/src/blocs/movie_detail_bloc.dart';
import 'package:my_movies/src/blocs/movie_detail_bloc_provider.dart';
import 'src/app.dart';

void main() =>
    runApp(MovieDetailBlocProvider(bloc: MovieDetailBloc(), child: App()));
