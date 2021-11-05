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
      title: "Shop your daily needs",
      description: "You won't get anything cheaper than Daily Needs."),
  OnBoarding(
      image: "assets/images/onboarding2.jpg",
      title: "Exciting Offers",
      description: "Get new offers and great deals everyday, every hour."),
  OnBoarding(
      image: "assets/images/onboarding3.jpg",
      title: "1000+ products",
      description: "Shop and get delivey at your convenience.")
];
