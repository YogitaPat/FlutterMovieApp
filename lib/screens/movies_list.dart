import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/viewModel/movie_view_model.dart';

import '../constant.dart';
import 'movie_details_screen.dart';

class MovieList extends StatelessWidget {
  final List<MovieViewModel>? movies;

  MovieList({this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.movies!.length,
      itemBuilder: (context, index) {
        //
        final movie = this.movies![index];
        return Center(
            child: Column(children: <Widget>[
          Row(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    // side: BorderSide(
                    // ),
                  ),
                  elevation: 4.0,
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MovieDetailScreen()));
                      },
                      child: Stack(children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(movie.poster!)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 20,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      '8/10',
                                      style: TextStyle(
                                          backgroundColor: Colors.black45,
                                          color: whiteColor),
                                    ),
                                  ),
                                ),
                              ),
                            ])
                      ])),
                ),
              )
            ],
          ),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 2,
                  ),
                  child: Text(
                    movie.title!,
                    style: titleTextStyle,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Image.asset(
                    "assets/icons/Group 356.png",
                    height: 15,
                  ),
                ),
              ),
              Container(
                  child: Text("2 hours: 1 mint",
                      style: TextStyle(
                          color: iconColor,
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal))),
            ],
          ),
          SizedBox(
            height: 30,
          )
        ]));
      },
    );
  }
}
