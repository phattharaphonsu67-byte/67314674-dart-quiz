const vatRate = 0.07;
void main(){
  final shopName = "Dart Cafe";
  print('ร้าน: $shopName');
  print('อัตราภาษี (vatRate): $vatRate');
  print('---');
  List<String> categories=['ของคาว','ของหวาน','เครื่องดื่ม'];
  Map<String,double> menu={
    'Black coffe' : 70,
    'Lemon Tea' : 45,
    'ข้าวผัด' : 45,
    'เค้ก':80

  };
  print('หมวดหมู่: ${categories}');
  print('จำนวนเมนูทั้งหมด : ${menu.length} รายการ');
  print('ราคา${menu.keys.first}: ${menu.values.first} บาท');
  print('---');
  print('เมนูราคาตั้งแต่ 50 บาทขึ้นไป: ');
  for(var i in menu.entries){
    if(i.value > 50){
      print('${i.key}: ${i.value} บาท');
    }
  }
  print('---');
  var calprice = calTotal(price: 55, qty: 2);
  var calpricedis =calTotal(price: 55, qty: 2,discount: 10);
  print('ยอดสุทธิ (ไม่มีส่วนลด): $calprice');
  print('ยอดสุทธิ (มีส่วนลด): $calpricedis');
    String? coupon ;
  int lengthCoupon = coupon?.length??0;
  print('---');
  print('ความยาวคูปอง: $lengthCoupon');
  print('คูปองหลังกำหนดค่า: $lengthCoupon');
}
double calTotal({required int price,required int qty,double discount = 0}){ 
  return((price*qty-discount)*(1-vatRate));
}