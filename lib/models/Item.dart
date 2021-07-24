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
    title: "Chocolate Cookies",
    image: "assets/images/bis.png",
    price: "\$41.09",
  ),
  Item(
      title: "Fresh Honey",
      image: "assets/images/4.png",
      price: "\$56.09",
      discount: "12%"),
  Item(
      title: "Ultimate Grocery",
      image: "assets/images/5.png",
      price: "\$33.02",
      discount: "12%"),
  Item(
    title: "Sweet Strawberry",
    image: "assets/images/3.png",
    price: "\$41.09",
  ),
  Item(
      title: "Fresh Juice",
      image: "assets/images/9.png",
      price: "\$56.09",
      discount: "12%"),
  Item(
      title: "Juicy Orange",
      image: "assets/images/2.png",
      price: "\$33.02",
      discount: "12%"),
  Item(
    title: "Butter Cookies",
    image: "assets/images/6.png",
    price: "\$41.09",
  ),
  Item(
      title: "Fresh Banana",
      image: "assets/images/2.png",
      price: "\$56.09",
      discount: "12%"),
  Item(
      title: "Fresh Meat",
      image: "assets/images/7.png",
      price: "\$34.02",
      discount: "12%"),
  Item(
      title: "Chocolates",
      image: "assets/images/8.png",
      price: "\$32.02",
      discount: "12%"),
  Item(
      title: "Rice",
      image: "assets/images/10.png",
      price: "\$15.02",
      discount: "12%"),
];
