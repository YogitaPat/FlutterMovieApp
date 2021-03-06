import 'package:movie_app/models/MovieModel.dart';

class MovieViewModel {
  final Movie? movie;

  MovieViewModel({this.movie});

  String? get title {
    return this.movie!.title;
  }

  String? get poster {
    return this.movie!.posterUrl;
  }
}
