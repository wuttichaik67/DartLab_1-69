class Book {
  String? title;
  String? author;
  double? price;

  void showDetail() {
    print("ชื่อหนังสือ: $title");
    print("ผู้แต่ง: $author");
    print("ราคา: $price บาท");
    print("--------------------");
  }
}

void main() {
  Book book1 = Book();
  book1.title = "เเบบฝึกภาษาไทย";
  book1.author = "อาจารย์ใจดี เรียนสนุก";
  book1.price = 350;

  Book book2 = Book();
  book2.title = "ภาษา Dart พื้นฐาน";
  book2.author = "บุญมี เเต่กรรมบัง";
  book2.price = 290;

  book1.showDetail();
  book2.showDetail();
}