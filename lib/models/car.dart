class Car {
  final String name;
  final double price;
  final double rating;
  final String image;
  final String imageUrl;
  final String brand;
  final int speed;
  final int year;
  final String description;

  const Car({
    required this.name,
    required this.price,
    required this.rating,
    required this.image,
    this.imageUrl = '',
    this.brand = '',
    this.speed = 0,
    this.year = 2024,
    this.description = '',
  });
}
