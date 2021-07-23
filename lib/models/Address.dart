class Address {
  String title;
  String details;
  bool value;

  Address({required this.title, required this.details, required this.value});
}

List<Address> addresses = [
  Address(title: "Home", details: "19/Monipuripara, Dhaka", value: false),
  Address(title: "Office", details: "23/Mohakhali, Dhaka", value: false),
  Address(title: "Gym", details: "23/Mohakhali, Dhaka", value: false),
];
