class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0.0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  // การเขียนเมธอดทับ (Method Overriding)
  @override
  double calculateSalary() {
    return monthlySalary;
  }
}
 
class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked) : super(name);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("สมชาย (ประจำ)", 30000),
    PartTimeEmployee("สมหญิง (พาร์ทไทม์)", 150, 80),
    FullTimeEmployee("สมพงษ์ (ประจำ)", 25000),
    PartTimeEmployee("สมใจ (พาร์ทไทม์)", 120, 100),
  ];

  for (var emp in employees) {
    print("พนักงาน: ${emp.name} | รายได้: ${emp.calculateSalary()} บาท");
  }
}