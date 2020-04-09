class Film {
  String title, openingCrawl, director, producer;
  DateTime releaseDate;

  Film(
      {this.director,
      this.openingCrawl,
      this.producer,
      this.releaseDate,
      this.title});

  Film.fromMap(Map<String, dynamic> map) {
     title = map['title'];
     director = map['director'];
     openingCrawl = map['opening_crawl'];
     producer = map['producer'];
     releaseDate = map['release_date'];
  }
}
