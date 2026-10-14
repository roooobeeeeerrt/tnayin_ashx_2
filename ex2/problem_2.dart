class Book {
  String title;
  String author;
  int pages;

  Book(this.title, this.author, this.pages);

  String getInfo() {
    return "$title by $author, $pages pages";
  }
}

void main() {
  Book book = Book("Arakner", "Xnko Aper", 350);

  print(book.getInfo());
}