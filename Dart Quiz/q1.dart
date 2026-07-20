final double vatRate = 0.07;

double calTotal({
    required int price,
    required int qty,
    double discount = 0,
}){
    return (price * qty - discount) * (1 + vatRate);
}

void main(){
    String shopName = 'Dart Cafe';
    print('ร้าน: $shopName');
    print('อัตราภาษี (vatRate): $vatRate');
    print('---');

    List<String> categories = ['เครื่องดื่ม','ของคาว','ของหวาน'];
    print('หมวดเมนู: $categories');

    Map<String,int> menu = {
        'ลาเต้' : 55,
        'เค้ก' : 70,
        'สเต๊ก' : 100,
        'นมหวาน' : 30
    };

    print('จำนวนเมนูทั้งหมด: ${menu.length} รายการ');
    print('ราคาลาเต้: ${menu['ลาเต้']} บาท');
    print('---');
    print('เมนูคั้งเเต่ราคา 50 บาทขึ้นไป');

    for (final entry in menu.entries){
        if (entry.value >= 50){
            print('${entry.key} : ${entry.value} บาท');
        }
    }
    print('---');

    final double withoutdiscount = calTotal(price: 55, qty: 2);
    print('ยอดสุทธิ (ไม่มีส่วนลด): $withoutdiscount');

    final double withdiscount = calTotal(price: 55, qty: 2, discount: 10);
    print('ยอดสุทธิ (มีส่วนลด): $withdiscount');
    print('---');
    
    String? coupon;
    print('ความยาวคูปอง : ${coupon?.length ?? 0}');

    coupon ??= 'NO-COUPON';
    print('คูปองหลังกำหนดค่า: $coupon');



}