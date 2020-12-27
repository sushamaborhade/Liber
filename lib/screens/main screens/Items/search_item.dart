class SearchItem{
  final String image;
  final String title;
  final String author;

  SearchItem({
    this.image,
    this.title,
    this.author,
  });
}

List<SearchItem> loadsearchItems(){
  var si= <SearchItem>[
    SearchItem(
      image: 'assets/images/p1.jpg',
      title: 'Romeo and Juliet',
      author: 'William Shakespeare',
    ),
    SearchItem(
      image: 'assets/images/p2.jpg',
      title: 'The Adventures of Sherlock Holmes',
      author: 'Arthur Conan Doyle',
    ),
    SearchItem(
      image: 'assets/images/p3.jpg',
      title: "Alice's Adventures in Wonderland",
      author: 'Lewis Carroll',
    ),
    SearchItem(
      image: 'assets/images/p4.jpg',
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
    ),
    SearchItem(
      image: 'assets/images/p5.jpg',
      title: 'All in the Mind',
      author: 'Alastair Campbell',
    ),
    SearchItem(
      image: 'assets/images/p6.jpg',
      title: 'The Most Dangerous Game',
      author: 'Richard Connell',
    ),
    SearchItem(
      image: 'assets/images/p7.jpg',
      title: 'The Art of War ',
      author: 'Sun Tzu',
    ),
    SearchItem(
      image: 'assets/images/p8.jpg',
      title: 'Dracula',
      author: 'Bram Stoker',
    ),
    SearchItem(
      image: 'assets/images/p9.jpg',
      title: 'The Secret Garden',
      author: 'Frances Hodgson Burnett',
    ),
    SearchItem(
      image: 'assets/images/p10.jpg',
      title: 'Tales of Space and Time',
      author: ' H. G. Wells',
    ),
  ];
  return si;
}