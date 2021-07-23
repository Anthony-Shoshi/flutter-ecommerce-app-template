class Payment {
  int id;
  String paymentMethod;
  bool value;

  Payment({required this.id, required this.paymentMethod, required this.value});
}

List<Payment> payments = [
  Payment(id: 1, paymentMethod: 'Cash on Delivery', value: false),
  Payment(id: 2, paymentMethod: 'bKash', value: false),
];
