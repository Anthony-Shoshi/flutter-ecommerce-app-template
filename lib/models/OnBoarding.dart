class OnBoarding {
  late String image;
  late String title;
  late String description;

  OnBoarding(
      {required this.image, required this.title, required this.description});
}

List<OnBoarding> contents = [
  OnBoarding(
      image: "assets/images/onboarding1.jpg",
      title: "This is first title",
      description:
          "This is first title This is first title This is first title"),
  OnBoarding(
      image: "assets/images/onboarding2.jpg",
      title: "This is second title",
      description:
          "This is second title This is second title This is second title"),
  OnBoarding(
      image: "assets/images/onboarding3.jpg",
      title: "This is third title",
      description:
          "This is third title This is third title This is third title")
];
