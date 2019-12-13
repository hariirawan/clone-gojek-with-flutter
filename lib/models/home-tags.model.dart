class Tags {
  final String name;
  final int id;

  Tags({this.name, this.id});
}

final Tags tag1 = Tags(id: 0, name: "Apa aja");
final Tags tag2 = Tags(id: 1, name: "Jalan Jalan");
final Tags tag3 = Tags(id: 2, name: "Makanan");
final Tags tag4 = Tags(id: 3, name: "Pembayaran");
final Tags tag5 = Tags(id: 4, name: "Berita");

List<Tags> tag = [tag1, tag2, tag3, tag4, tag5];
