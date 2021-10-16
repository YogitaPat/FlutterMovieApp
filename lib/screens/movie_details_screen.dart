import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/constant.dart';

class MovieDetailScreen extends StatefulWidget {
  // final posterUrl;
  // final description;
  // final releaseDate;

  // MovieDetailScreen({
  //
  //   // this.posterUrl,
  //   // this.description,
  //   // this.releaseDate,
  //
  // });

  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        top: false,
        bottom: true,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 300.0,
                  floating: false,
                  pinned: true,
                  elevation: 0.0,
                  backgroundColor: bgColor,
                  flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                    "https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg",
                    fit: BoxFit.cover,
                  )),
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 55.0,
                      alignment: WrapAlignment.spaceBetween,
                      children: <Widget>[
                        ElevatedButton.icon(
                          icon: Image.asset(
                            "assets/icons/Vector 27.png",
                            height: 20,
                          ),
                          label: Text(""),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              //background color of button
                              //side: BorderSide(width:3, color:Colors.brown), //border width and color
                              elevation: 3,
                              //elevation of button
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.all(
                                  18) //content padding inside button
                              ),
                        ),
                        ElevatedButton.icon(
                          icon: Image.asset(
                            "assets/icons/Path-1.png",
                            height: 20,
                          ),
                          label: Text(""),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              //background color of button
                              elevation: 3,
                              //elevation of button
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.all(
                                  18) //content padding inside button
                              ),
                        ),
                        ElevatedButton.icon(
                          icon: Image.asset(
                            "assets/icons/Path.png",
                            height: 20,
                          ),
                          label: Text(""),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              //background color of button
                              elevation: 3,
                              //elevation of button
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.all(
                                  18) //content padding inside button
                              ),
                        )
                      ],
                    ),
                    Container(margin: EdgeInsets.only(top: 8.0, bottom: 8.0)),
                    Row(
                      children: <Widget>[
                        Card(
                            // margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 4.0,
                            color: primaryColor,
                            child: Stack(children: <Widget>[
                              Expanded(
                                flex: 8,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            child: RatingBar.builder(
                                              itemSize: 25,
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: iconColor,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 100,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                                child: Text("8.4",
                                                    style: TextStyle(
                                                        color: iconColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FontStyle.normal))))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                              child: Text(
                                                  "Internet Movie \n Database",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FontStyle.normal))),
                                        ),
                                        SizedBox(
                                          width: 110,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                                child: Text("8.4/10",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FontStyle.normal))))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                              child: Text("Rotten Tomatoes",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FontStyle.normal))),
                                        ),
                                        SizedBox(
                                          width: 110,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                                child: Text("94%",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FontStyle.normal))))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                              child: Text("Metacirtic",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FontStyle.normal))),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                                child: Text("78/100",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FontStyle.normal))))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ])),

                        // Text(
                        //   widget.releaseDate,
                        //   style: TextStyle(
                        //     fontSize: 18.0,
                        //   ),
                        // ),
                      ],
                    ),
                    Container(margin: EdgeInsets.only(top: 8.0, bottom: 8.0)),
                    Row(
                      children: <Widget>[
                        Card(
                            // margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 4.0,
                            color: primaryColor,
                            child: Stack(children: <Widget>[
                              Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            child: Image.asset(
                                              "assets/icons/Group 357.png",
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                                child: Text("2019",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle: FontStyle
                                                            .normal)))),
                                        Text(
                                            "                                                                 "),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            child: Image.asset(
                                              "assets/icons/Vector.png",
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                                child: Text("United States",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle: FontStyle
                                                            .normal)))),
                                        Text(
                                            "                                              "),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            child: Image.asset(
                                              "assets/icons/Group 356.png",
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                                child: Text("181 Mint",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle: FontStyle
                                                            .normal)))),
                                        Text(
                                            "                                                         "),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            child: Image.asset(
                                              "assets/icons/Group 358.png",
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                                child: Text(
                                                    "English,Japnese\n Xhosra,German ",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle: FontStyle
                                                            .normal)))),
                                        Text(
                                            "                                    "),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ])),
                      ],
                    ),
                    Container(margin: EdgeInsets.only(top: 8.0, bottom: 8.0)),
                    Row(
                      children: <Widget>[
                        Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 4.0,
                            color: primaryColor,
                            child: Stack(children: <Widget>[
                              Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            child: Text("Plot",
                                                style: TextStyle(
                                                    color: whiteColor,
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 21,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FontStyle.normal)),
                                          ),
                                        ),
                                        Text(
                                            "                                                                             "),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: Text(
                                                    "Earth's mightiest heroes must come and\nlearn to fight as a team if they are going\nto stop the mischievous Loki and his\nalien army from enslaving humanity.",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle: FontStyle
                                                            .normal)))),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: Text("Director",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 21,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle: FontStyle
                                                            .normal)))),
                                        Text(
                                            "                                                                    "),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: ElevatedButton(
                                              child: Text("ANTHONY RUSSO",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FontStyle.normal)),
                                              onPressed: () =>
                                                  print("it's pressed"),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.grey,
                                                onPrimary: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                              ),
                                            ))),
                                        Text(
                                            "                                                    "),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                width: 150,
                                                child: ElevatedButton(
                                                  child: Text("JOY RUSSO",
                                                      style: TextStyle(
                                                          color: whiteColor,
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle: FontStyle
                                                              .normal)),
                                                  onPressed: () =>
                                                      print("it's pressed"),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Colors.grey,
                                                    onPrimary: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                ))),
                                        Text(
                                            "                                                  "),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: Text("Actors",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 21,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle: FontStyle
                                                            .normal)))),
                                        Text(
                                            "                                                                         "),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: ElevatedButton(
                                              child: Text("ROBERT DOWNEY JR.",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FontStyle.normal)),
                                              onPressed: () =>
                                                  print("it's pressed"),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.grey,
                                                onPrimary: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                              ),
                                            ))),
                                        Text(
                                            "                                           "),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: ElevatedButton(
                                              child: Text("CHIRS EVANS",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FontStyle.normal)),
                                              onPressed: () =>
                                                  print("it's pressed"),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.grey,
                                                onPrimary: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                              ),
                                            ))),
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: ElevatedButton(
                                              child: Text("RUFFALO",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FontStyle.normal)),
                                              onPressed: () =>
                                                  print("it's pressed"),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.grey,
                                                onPrimary: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                              ),
                                            ))),
                                        Text("                            ")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: Text("Writer",
                                                    style: TextStyle(
                                                        color: whiteColor,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 21,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle: FontStyle
                                                            .normal)))),
                                        Text(
                                            "                                                                         "),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: ElevatedButton(
                                              child: Text("CHRISTOPHER",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FontStyle.normal)),
                                              onPressed: () =>
                                                  print("it's pressed"),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.grey,
                                                onPrimary: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                              ),
                                            ))),
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: ElevatedButton(
                                              child: Text("STHPHEMN",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FontStyle.normal)),
                                              onPressed: () =>
                                                  print("it's pressed"),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.grey,
                                                onPrimary: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                              ),
                                            ))),
                                        Text("                   ")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                                child: ElevatedButton(
                                              child: Text("STAN ",
                                                  style: TextStyle(
                                                      color: whiteColor,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FontStyle.normal)),
                                              onPressed: () =>
                                                  print("it's pressed"),
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.grey,
                                                onPrimary: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                              ),
                                            ))),
                                        Text(
                                            "                                                                  "),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              )
                            ])),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
