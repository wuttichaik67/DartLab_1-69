import 'dart:async';

Future<void> main() async {
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (message) {
      print("แจ้งเตือน: $message");
    },
    onDone: () {
      print("สตรีมสิ้นสุด");
    },
  );

  controller.add("มีข้อความใหม่");
  controller.add("มีผู้ใช้กดถูกใจ");
  controller.add("ดาวน์โหลดเสร็จแล้ว");

  await controller.close();
}