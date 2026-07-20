Future<Map<String , dynamic>> fetchOrder (int orderId) async{
  await Future.delayed(Duration(seconds: 2));

  if (orderId <= 0) {
    throw Exception('รหัสคำสังซื้อไม่ถูกต้อง');
  
  } 
  return{
    'id': 7,
    'menu': 'ลาเต้',
    'total' : 65.0
  };

}

Stream<String> trackOrder() async* {

  await Future.delayed(Duration(seconds: 1));
  yield 'รับออร์เดอร์แล้ว';

  await Future.delayed(Duration(seconds: 1));
  yield 'กำลังจัดทำ';

  await Future.delayed(Duration(seconds: 1));
  yield 'จัดส่งเรียบร้อย';
}

void main() async{
  print('เริ่มโหลดข้อมูล...');
  try{

    final order = await fetchOrder(7);
    print('ได้ข้อมูลออร์เดอร์: $order');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e'); 
  }
  print('จบรายการ');
    print('---');

  try{
    final order = await fetchOrder(0);
    print('ได้ข้อมูลออร์เดอร์: $order');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  }
  print('จบรายการ');
  print('---');


  await for (final status in trackOrder()) {
    print('สถานะ: $status');
  }

  print('ติดตามสถานะเสร็จสิ้น');
}


  