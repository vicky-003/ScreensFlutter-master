class Product {
  late int id;
  late String title;
  late double price;
  late String description;
  late String category;
  late String image;

   Product({
  required this.id,
  required this.title,
  required this.price,
  required this.description,
  required this.category,
  required this.image,
});

   factory Product.fromJson(Map<String , dynamic>json){
     return Product(id: json['id'],
         title: json['title'],
         price: double.parse(json['price'].toString()),
         description: json['description'],
         category: json['category'],
         image: json['image'],
     );
   }
}