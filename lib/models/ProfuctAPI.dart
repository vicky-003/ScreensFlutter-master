class Product {
  late int id;
  late String title;
  late double price;
  late String description;
  late String category;
  late String image;
  late Rating rating; // New field for rating


  Product({
  required this.id,
  required this.title,
  required this.price,
  required this.description,
  required this.category,
  required this.image,
    required this.rating,
  });

   factory Product.fromJson(Map<String , dynamic>json){
     return Product(
         id: json['id'],
         title: json['title'],
         price: double.parse(json['price'].toString()),
         description: json['description'],
         category: json['category'],
         image: json['image'],
         rating: Rating.fromJson(json['rating']), // Parse "rating" from JSON
     );
   }
}

class Rating {
  late double rate;
  late int count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: double.parse(json['rate'].toString()),
      count: json['count'],
    );
  }
  String getFormattedRating() {
    return 'Rating : $rate,\nSale Count : $count'; // Format the rating as "X.X / 5.0"
  }

}