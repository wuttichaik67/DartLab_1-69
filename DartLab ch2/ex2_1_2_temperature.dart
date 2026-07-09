class Temperature {
  double _celsius = 0;

  Temperature(double celsius) {
    this.celsius = celsius;
  }

  double get celsius => _celsius;

  set celsius(double value) {
    if (value < -273.15) {
      print("ข้อผิดพลาด: อุณหภูมิต่ำกว่าศูนย์สัมบูรณ์ (-273.15 °C) ไม่ได้");
      return;
    }
    _celsius = value;
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

void main() {
  Temperature temp = Temperature(10);

  if (temp.celsius >= -273.15) {
    print("อุณหภูมิปัจจุบัน: ${temp.celsius} °C");
    print("แปลงเป็นฟาเรนไฮต์: ${temp.fahrenheit} °F");
  }
}