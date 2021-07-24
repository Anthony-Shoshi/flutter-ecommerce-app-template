class Item {
  String? title;
  String? price;
  String? image;
  String? discount;

  Item({this.title, this.image, this.price, this.discount});
}

List<Item> items = [
  Item(
      title: "Fresh Mangoes",
      image: "assets/images/1.png",
      price: "\$30.09",
      discount: "20%"),
  Item(
    title: "Sweet Strawberry",
    image: "assets/images/3.png",
    price: "\$41.09",
  ),
  Item(
      title: "Fresh Banana",
      image: "assets/images/2.png",
      price: "\$56.09",
      discount: "12%"),
  Item(
      title: "Juicy Orange",
      image: "assets/images/2.png",
      price: "\$33.02",
      discount: "12%"),
];
