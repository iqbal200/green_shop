part of 'models.dart';

 enum FoodType {new_food, popular, recommended}

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://images.unsplash.com/photo-1509223197845-458d87318791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=649&q=80",
      name: "Sansevieria",
      description:
          "Sansevieria atau lidah mertua adalah marga tanaman hias yang cukup populer sebagai penghias bagian dalam rumah karena tanaman ini dapat tumbuh dalam kondisi yang sedikit air dan cahaya matahari.",
      ingredients:
          "Cara Merawat Tanaman Lidah Mertua yang Benar: \n1. Pastikan Tanaman Mendapat Cahaya Matahari. \n2. Siram Lidah Mertua Secukupnya.\n3. Jangan Letakkan di Ruangan dengan Suhu yang Terlalu Rendah.\n4. Gunakan Kompos Cacing atau Pupuk Slow Release. \n5. Gunakan Semprotan Anti Hama",
      price: 150000,
      rate: 4.2,
      types: [FoodType.new_food,FoodType.recommended,FoodType.popular]),
  Food(
      id: 2,
      picturePath:
          "https://images.unsplash.com/photo-1508022713622-df2d8fb7b4cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHBsYW50cyUyMG9uJTIwcG90c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
      name: "Kaktus Gurun",
      description:
          "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      ingredients:
          "Bisa dijadikan hiasan kamar karena tidak terlalu membutuhkan air",
      price: 150000,
      rate: 2.7),
  Food(
      id: 3,
      picturePath:
          'https://images.unsplash.com/photo-1611909023032-2d6b3134ecba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGxhbnRzJTIwb24lMjBwb3RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      name: "Bunga Rumput",
      description:
          "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      ingredients: "Dijadikan hiasan didalam rumah",
      price: 150000,
      rate: 3.2,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath:
          'https://images.unsplash.com/photo-1502651492682-6c7b46d75d85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBsYW50cyUyMG9uJTIwcG90c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
      name: "Bunga Anggrek",
      description:
          "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      ingredients:
          "Bisa dipelihara didalam ruangan yang kurang cahaya matahari",
      price: 150000,
      rate: 2.2,
      types: [FoodType.recommended]),
  Food(
      id: 5,
      picturePath:
          'https://images.unsplash.com/photo-1613372978247-de50228e8033?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGxhbnRzJTIwb24lMjBwb3RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      name: "Lida Buaya",
      description:
          "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      ingredients: "Memiliki banyak manfaat untuk kesehatan dan kecantikan",
      price: 150000,
      rate: 4.7),
  Food(
      id: 6,
      picturePath:
          'https://images.unsplash.com/photo-1509423350716-97f9360b4e09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGxhbnRzJTIwb24lMjBwb3RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      name: "Lida Mertua",
      description:
          "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      ingredients: "Seperti lidah buaya banyak manfaat untuk kecantikan",
      price: 150000,
      rate: 1.5),
  Food(
      id: 7,
      picturePath:
          'https://images.unsplash.com/photo-1586751638048-f3508493629e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGxhbnRzJTIwb24lMjBwb3RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      name: "Bunga Kuping Gajah",
      description:
          "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      ingredients: "Sangat cocok dijadikan hiasan dinding",
      price: 150000,
      rate: 5.6),
  Food(
      id: 8,
      picturePath:
          'https://images.unsplash.com/photo-1600411832986-5a4477b64a1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHBsYW50cyUyMG9uJTIwcG90c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
      name: "Bunga Sirih",
      description:
          "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      ingredients:
          "Bunga yang bisa menjalar sangat cocok dijadikan hiasan kamar supaya estetik",
      price: 150000,
      rate: 4.5),
];
