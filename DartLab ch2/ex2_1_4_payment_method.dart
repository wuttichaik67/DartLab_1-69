abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระเงินจำนวน $amount บาท ด้วยบัตรเครดิตเรียบร้อยแล้ว");
  }
}

// คลาส PromptPay นำอินเทอร์เฟซไปใช้งาน
class PromptPay implements PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระเงินจำนวน $amount บาท ด้วย PromptPay เรียบร้อยแล้ว");
  }
}

class CashOnDelivery implements PaymentMethod {
  @override
  void pay(double amount) {
    print("บันทึกการชำระเงินปลายทางจำนวน $amount บาท เรียบร้อยแล้ว");
  }
}

void main() {
  List<PaymentMethod> paymentList = [
    CreditCard(),
    PromptPay(),
    CashOnDelivery()
  ];

  for (var method in paymentList) {
    method.pay(1250.0);
  }
}