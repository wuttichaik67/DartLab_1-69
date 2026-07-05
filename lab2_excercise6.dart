double rectangleArea(double width, double height) {
  return width * height;
}

double triangleArea(double base, double height) {
  return 0.5 * base * height;
}

double cylinderVolume(double radius, double height) {
  return 3.14 * radius * radius * height;
}

void main() {
  double rectangle = rectangleArea(5, 8);
  print('Rectangle Area = $rectangle');

  double triangle = triangleArea(10, 6);
  print('Triangle Area = $triangle');

  double cylinder = cylinderVolume(5, 10);
  print('Cylinder Volume = $cylinder');
}