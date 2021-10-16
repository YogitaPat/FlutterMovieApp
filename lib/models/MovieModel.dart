class Movie {

  final String? title;
  final String? posterUrl;
  final String? Runtime;

  Movie({this.title, this.posterUrl,this.Runtime});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json["Title"],
        posterUrl: json["Poster"],
      Runtime: json["Runtime"]
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['Title'] = this.title;
    data["posterUrl"] = this.posterUrl;
    data['Runtime'] = this.Runtime;


    return data;
  }

}