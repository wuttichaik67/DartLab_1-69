Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception("User ID ไม่ถูกต้อง");
  }

  return {
    "id": userId,
    "name": "Mark",
    "age": 20,
  };
}

Future<void> main() async {
  // กรณีที่ 1 : userId ถูกต้อง
  try {
    Map<String, dynamic> profile = await fetchProfile(1);
    print("ข้อมูลผู้ใช้");
    print("ID : ${profile["id"]}");
    print("Name : ${profile["name"]}");
    print("Age : ${profile["age"]}");
  } catch (e) {
    print("เกิดข้อผิดพลาด : $e");
  } finally {
    print("จบการทำงานครั้งที่ 1");
  }

  print("----------------------");

  // กรณีที่ 2 : userId ไม่ถูกต้อง
  try {
    Map<String, dynamic> profile = await fetchProfile(0);
    print(profile);
  } catch (e) {
    print("เกิดข้อผิดพลาด : $e");
  } finally {
    print("จบการทำงานครั้งที่ 2");
  }
}