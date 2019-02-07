class NewsItem {
  String author;
  String title;
  List<String> tags;
  String description;
  String publishDate;
  String body;

  NewsItem(this.author, this.title, this.tags, this.description,
      this.publishDate, this.body);

  NewsItem.createDefault(String author) {
    this.author = author;
    title = "Test";
    tags = [author];
    description = "Test";
    publishDate = "Test";
    body = "Test";
  }
}
