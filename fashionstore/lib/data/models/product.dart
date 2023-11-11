import 'package:flutter/material.dart';

class Product {
  late final int id;
  late final String title;
  late final Map<String, String> description;
  late final String image;
  late final List<String> images;
  late final List<Map<String, dynamic>> colors;
  late final double rating;
  late final double price;
  late final String category;
  late bool isFavourite, isPopular;
  // late DateTime createdAt;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.price,
    required this.image,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'images': images,
      'category': category,
      'colors': colors,
      'rating': rating,
      'price': price,
      'isFavourite': isFavourite,
      'isPopular': isPopular,
    };
  }

  Product.fromMap(dynamic map) {
    id = map['id'];
    title = map['title'];
    description = map['description'];
    image = map['image'];
    category = map['category'];
    images = map['images'];
    colors = map['colors'];
    rating = map['rating'];
    price = map['price'];
    isFavourite = map['isFavourite'];
    isPopular = map['isPopular'];
  }
  Product toEntity() => Product(
        id: id,
        title: title,
        description: description,
        image: image,
        images: images,
        category: category,
        colors: colors,
        rating: rating,
        price: price,
        isFavourite: isFavourite,
        isPopular: isPopular,
      );
}

// Demo data
List<Product> demoProducts = [
  Product(
    id: 1,
    image: "assets/images/top_1.png",
    images: [
      "assets/images/top_1.png",
    ],
    category: "Top",
    colors: [
      //{"colorName": "Red Rose", "color": const Color(0xFFF6625E)},
      //{"colorName": "Purple", "color": const Color(0xFF836DB8)},
      {"colorName": "Grey", "color":const Color.fromARGB(255, 75, 75, 74)},
    ],
    title: "Crop Top",
    price: 9.89,
    description: {
      "headline": "Product Description",
      "description": description
    },
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    image: "assets/images/top_2.png",
    images: [
      "assets/images/top_2.png",
    ],
    category: "Top",
    colors: [
      //{"colorName": "Red Rose", "color": const Color(0xFFF6625E)},
      //{"colorName": "Purple", "color": const Color(0xFF836DB8)},
      {"colorName": "White", "color":const Color.fromARGB(255, 245, 245, 242)},
    ],
    title: "Crop Top",
    price: 10.26,
    description: {
      "headline": "Product Description",
      "description": description
    },
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 3,
    image: "assets/images/top_3.png",
    images: [
      "assets/images/top_3.png",
    ],
    category: "Top",
    colors: [
      //{"colorName": "Red Rose", "color": const Color(0xFFF6625E)},
      //{"colorName": "Purple", "color": const Color(0xFF836DB8)},
      {"colorName": "Black", "color":const Color.fromARGB(255, 1, 1, 1)},
    ],
    title: "Crop Top",
    price: 11.38,
    description: {
      "headline": "Product Description",
      "description": description
    },
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
//   
  Product(
    id: 4,
    image: "assets/images/sp1.png",
    images: [
      "assets/images/sp1.png",
    ],
    category: "Dresses",
    colors: [
      {"colorName": "dark blue", "color": const Color.fromARGB(255, 63, 63, 63)}
    ],
    title: "Mini Dress",
    price: 12.78,
    description: {
      "headline": "Product Description",
      "description": description
    },
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 5,
    image: "assets/images/dress_2.png",
    images: [
      "assets/images/dress_2_1.png",
      "assets/images/dress_2.png",
    ],
    category: "Dresses",
    colors: [
      {"colorName": "Blue", "color": const Color.fromARGB(255, 98, 131, 203)},
      {"colorName": "Pink", "color": const Color.fromARGB(255, 213, 162, 162)}
    ],
    title: "Sweet Dress",
    price: 12.78,
    description: {
      "headline": "Product Description",
      "description": description
    },
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 6,
    image: "assets/images/dress_3.png",
    images: [
      "assets/images/dress_3.png",
  
    ],
    category: "Dresses",
    colors: [
      {"colorName": "Grey", "color": const Color.fromARGB(255, 50, 49, 49)},
      
    ],
    title: "Dami Dress",
    price: 13.65,
    description: {
      "headline": "Product Description",
      "description": description
    },
    rating: 4.1,
    isPopular: true,
  ),
  Product (
    id: 7,
    image: "assets/images/dress_1.png",
    images: [
      "assets/images/dress_1.png",
    ],
    category: "Dresses",
    colors: [
      {"colorName": "Red Rose", "color": const Color(0xFFF6625E)},
      {"colorName": "Purple", "color": const Color(0xFF836DB8)},
    ],
    title: "Sneath Dress",
    price: 14.75,
    description: {
      "headline": "Procdcuct Description",
      "description": description
    },
    rating: 4.4,
    isPopular: true,
  ),
  Product(
    id: 8,
    image: "assets/images/set_1.png",
    images: [
      "assets/images/set_1.png"
    ],
    category: "Set",
    colors: [
      {"colorName": "Grey", "color": const Color.fromARGB(255, 78, 77, 77)},
     
    ],
    title: "Cindy Set",
    price: 13.26,
    description: {
      "headline": "Product Description",
      "description": description
    },
    rating: 4.1,
    isFavourite: false,
  ),
  Product(
    id: 9,
    image: "assets/images/set_2.png",
    images: [
      "assets/images/set_2.png",
    ],
    category: "Set",
    colors: [
      {"colorName": "Red Rose", "color": const Color(0xFFF6625E)},
      {"colorName": "Purple", "color": const Color(0xFF836DB8)},
    ],
    title: "Haley Set",
    price: 12.49,
    description: {
      "headline": "Product Description",
      "description": description
    },
    rating: 4.4,
  
    isPopular: true,
  ),

  
 ];

const String description =
    "Style Deets \n * Fit Type: Regular \n * Waist Line: Middle Waist \n * Chest Pad: No Padding \n *Linning: Unlined \n * Length: Short \n * Neckline: Snoop Neckline/ u-neckline";