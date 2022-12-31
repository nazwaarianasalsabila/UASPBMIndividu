class Food {
  Food({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.kcal,
    required this.cookingTime,
    required this.description,
  });

  String id;
  String image;
  String name;
  int price;
  double rate;
  String kcal;
  String cookingTime;
  String description;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        price: json["price"],
        rate: json["rate"].toDouble(),
        kcal: json["kcal"],
        cookingTime: json["cooking_time"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "price": price,
        "rate": rate,
        "kcl": kcal,
        "cooking_time": cookingTime,
        "description": description,
      };
}

final dummyFoods = [
  Food(
    id: '1',
    image: 'assets/burgerayam.png',
    name: 'Burger Ayam',
    price: 20000,
    rate: 5.8,
    kcal: '150',
    cookingTime: '5-10 Min',
    description:
        'Burger ayam ini menggunakan ayam kualitas 100%, dengan sayuran, keju mozarella, &.....',
  ),
  Food(
    id: '2',
    image: 'assets/burgersapi.png',
    name: 'Burger Sapi',
    price: 25000,
    rate: 4.5,
    kcal: '100',
    cookingTime: '30 Min',
    description:
        'Burger sapi ini menggunakan daging sapi kualitas 100%, dengan sayuran, keju mozarella, &.....',
  ),
  Food(
    id: '3',
    image: 'assets/burgerkeju.png',
    name: 'Burger Keju',
    price: 15000,
    rate: 4,
    kcal: '20',
    cookingTime: '15 Min',
    description:
        'Burger keju ini menggunakan keju kualitas 100%, dengan sayuran, keju mozarella, &.....',
  ),
  Food(
    id: '4',
    image: 'assets/burgerikan.png',
    name: 'Burger Ikan',
    price: 25000,
    rate: 4.8,
    kcal: '60',
    cookingTime: '18 Min',
    description:
        'Burger ikan ini menggunakan ikan kualitas 100%, dengan sayuran, keju mozarella, &.....',
  ),
];
