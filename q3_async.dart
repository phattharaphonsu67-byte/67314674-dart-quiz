Future<Map<String, dynamic>> fectOder(int oderId,String menu,double total) async {
  await Future.delayed(Duration(seconds: 2));

  if (oderId <= 0) {
    throw Exception('รหัสคำสั่งซื้อไม่ถูกต้อง');
  }
  return {'Id': oderId,
  'menu':menu,
  'total':total};
}
void main()async{
  print('เริ่มโหลดข้อมูล...');
  try {
    var oderId = await fectOder(1,'leo',150);

    print(oderId);
  } catch (e) {
    print(e);
  } finally {
    print('finnish');
}
}