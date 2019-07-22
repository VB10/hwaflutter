class Book {
  String author;
  int id;
  String title;

  Book({this.author, this.id, this.title});

  Book.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['id'] = this.id.toString();
    data['title'] = this.title;
    return data;
  }
}
