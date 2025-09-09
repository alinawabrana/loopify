import 'package:loopify/featutres/home/models/category_model.dart';
import 'package:loopify/featutres/home/models/product/product_model.dart';
import 'package:loopify/utils/constants/image_strings.dart';

const List<CategoryModel> categories = [
  CategoryModel(id: 1, label: "Free Items", imageURL: AImages.categoryImage1),
  CategoryModel(id: 2, label: "Bags", imageURL: AImages.categoryImage2),
  CategoryModel(
    id: 3,
    label: "Designer Items",
    imageURL: AImages.categoryImage3,
  ),
  CategoryModel(id: 4, label: "Makeup", imageURL: AImages.categoryImage4),
  CategoryModel(id: 1, label: "Free Items", imageURL: AImages.categoryImage1),
  CategoryModel(id: 2, label: "Bags", imageURL: AImages.categoryImage2),
  CategoryModel(
    id: 3,
    label: "Designer Items",
    imageURL: AImages.categoryImage3,
  ),
  CategoryModel(id: 4, label: "Makeup", imageURL: AImages.categoryImage4),
];

const List<ProductModel> promotedItems = [
  ProductModel(
    id: 1,
    title: 'Luxurious Gucci Laptop Bag Embellished with Stunning Pearls',
    price: 920,
    isNegotiable: true,
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    categoryId: 1,
    condition: 'Excellent',
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    sellerNote:
        'Thank you for considering our luxurious Gucci laptop bag! This stunning piece is adorned with exquisite pearls and elegant gold accents, making it the perfect accessory for the modern professional.',
    imageURLs: [
      AImages.promotedImage1,
      AImages.productImage2,
      AImages.productImage3,
      AImages.productImage4,
      AImages.productImage5,
    ],
    isAdSpendEnabled: false,
  ),
  ProductModel(
    id: 2,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 780,
    isNegotiable: true,
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    categoryId: 1,
    condition: 'Excellent',
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    sellerNote:
        'Thank you for considering our luxurious Gucci laptop bag! This stunning piece is adorned with exquisite pearls and elegant gold accents, making it the perfect accessory for the modern professional.',
    imageURLs: [
      AImages.promotedImage2,
      AImages.productImage2,
      AImages.productImage3,
      AImages.productImage4,
      AImages.productImage5,
    ],
    isAdSpendEnabled: false,
  ),
  ProductModel(
    id: 3,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 650,
    isNegotiable: true,
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    categoryId: 1,
    condition: 'Excellent',
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    sellerNote:
        'Thank you for considering our luxurious Gucci laptop bag! This stunning piece is adorned with exquisite pearls and elegant gold accents, making it the perfect accessory for the modern professional.',
    imageURLs: [
      AImages.promotedImage3,
      AImages.productImage2,
      AImages.productImage3,
      AImages.productImage4,
      AImages.productImage5,
    ],
    isAdSpendEnabled: false,
  ),
  ProductModel(
    id: 4,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 1050,
    isNegotiable: true,
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    categoryId: 1,
    condition: 'Excellent',
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    sellerNote:
        'Thank you for considering our luxurious Gucci laptop bag! This stunning piece is adorned with exquisite pearls and elegant gold accents, making it the perfect accessory for the modern professional.',
    imageURLs: [
      AImages.promotedImage4,
      AImages.productImage2,
      AImages.productImage3,
      AImages.productImage4,
      AImages.productImage5,
    ],
    isAdSpendEnabled: false,
  ),
  ProductModel(
    id: 5,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 1200,
    isNegotiable: true,
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    categoryId: 1,
    condition: 'Excellent',
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    sellerNote:
        'Thank you for considering our luxurious Gucci laptop bag! This stunning piece is adorned with exquisite pearls and elegant gold accents, making it the perfect accessory for the modern professional.',
    imageURLs: [
      AImages.promotedImage5,
      AImages.productImage2,
      AImages.productImage3,
      AImages.productImage4,
      AImages.productImage5,
    ],
    isAdSpendEnabled: false,
  ),
  ProductModel(
    id: 6,
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 430,
    isNegotiable: true,
    description:
        'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
    categoryId: 1,
    condition: 'Excellent',
    location: 'New York',
    material: 'Leather',
    color: 'Brown',
    sellerNote:
        'Thank you for considering our luxurious Gucci laptop bag! This stunning piece is adorned with exquisite pearls and elegant gold accents, making it the perfect accessory for the modern professional.',
    imageURLs: [
      AImages.promotedImage6,
      AImages.productImage2,
      AImages.productImage3,
      AImages.productImage4,
      AImages.productImage5,
    ],
    isAdSpendEnabled: false,
  ),
];
