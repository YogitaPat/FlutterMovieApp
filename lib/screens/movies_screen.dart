import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/viewModel/movies_list_view_model.dart';

import 'package:provider/provider.dart';

import 'movies_list.dart';

class MovieListPage extends StatefulWidget {
  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Provider.of<MovieListViewModel>(context, listen: false)
        .fetchMovies("Avengers");
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<MovieListViewModel>(context);

    return Scaffold(
        body: Container(
            color: bgColor,
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  controller: _controller,
                  onSubmitted: (value) {
                    if (value.isNotEmpty) {
                      vm.fetchMovies(value);
                      _controller.clear();
                    }
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    //  prefixIcon:  SvgPicture.asset("assets/icons/Frame.svg"),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: whiteColor,
                    ),
                    suffixIcon: Icon(
                      Icons.close,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              Expanded(child: MovieList(movies: vm.movies))
              //we will create this further down
            ])));
  }
}
