import 'package:loopify/featutres/shop/models/category_model.dart';
import 'package:loopify/featutres/shop/models/promoted_items_model.dart';
import 'package:loopify/utils/constants/image_strings.dart';

const List<CategoryModel> categories = [
  CategoryModel(label: "Free Items", imageURL: AImages.categoryImage1),
  CategoryModel(label: "Bags", imageURL: AImages.categoryImage2),
  CategoryModel(label: "Designer Items", imageURL: AImages.categoryImage3),
  CategoryModel(label: "Makeup", imageURL: AImages.categoryImage4),
  CategoryModel(label: "Free Items", imageURL: AImages.categoryImage1),
  CategoryModel(label: "Bags", imageURL: AImages.categoryImage2),
  CategoryModel(label: "Designer Items", imageURL: AImages.categoryImage3),
  CategoryModel(label: "Makeup", imageURL: AImages.categoryImage4),
];

const List<PromotedItemsModel> promotedItems = [
  PromotedItemsModel(
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 920,
    imageURL: AImages.promotedImage1,
  ),
  PromotedItemsModel(
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 780,
    imageURL: AImages.promotedImage2,
  ),
  PromotedItemsModel(
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 650,
    imageURL: AImages.promotedImage3,
  ),
  PromotedItemsModel(
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 1050,
    imageURL: AImages.promotedImage4,
  ),
  PromotedItemsModel(
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 1200,
    imageURL: AImages.promotedImage5,
  ),
  PromotedItemsModel(
    title: '24K Gold Elegantly crafted with lustrous pearls',
    price: 430,
    imageURL: AImages.promotedImage6,
  ),
];

final List<String> productImages = [
  AImages.productImage1,
  AImages.productImage2,
  AImages.productImage3,
  AImages.productImage4,
  AImages.productImage5,
];
