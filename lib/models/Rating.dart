class Rating {
  String? ratingMessage;
  String? ratingDate;
  double? rating;

  Rating({this.rating, this.ratingMessage, this.ratingDate});
}

List<Rating> ratings = [
  Rating(
    rating: 4.6,
    ratingMessage: "Great food!",
    ratingDate: "23 July, 2021",
  ),
  Rating(
    rating: 4.9,
    ratingMessage: "Really healthy food!",
    ratingDate: "22 July, 2021",
  ),
  Rating(
    rating: 3.0,
    ratingMessage: "Not bad!",
    ratingDate: "20 July, 2021",
  ),
  Rating(
    rating: 5,
    ratingMessage: "Will buy again!",
    ratingDate: "17 July, 2021",
  ),
  Rating(
    rating: 4.5,
    ratingMessage: "Tasty food!",
    ratingDate: "15 July, 2021",
  ),
];
