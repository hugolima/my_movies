import 'package:flutter/material.dart';
import 'movie_detail_bloc.dart';

class MovieDetailBlocProvider extends StatefulWidget {
  MovieDetailBlocProvider({Key key, @required this.bloc, @required this.child})
      : super(key: key);

  final MovieDetailBloc bloc;
  final Widget child;

  @override
  _MovieDetailBlocProviderState createState() =>
      _MovieDetailBlocProviderState();

  static MovieDetailBloc of(BuildContext context) {
    MovieDetailBlocProvider provider =
        context.findAncestorWidgetOfExactType<MovieDetailBlocProvider>();
    return provider.bloc;
  }
}

class _MovieDetailBlocProviderState extends State<MovieDetailBlocProvider> {
  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
