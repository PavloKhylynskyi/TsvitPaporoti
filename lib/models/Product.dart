import 'package:tsvit_paporoti/models/response.dart';

class Product {
  final String name;
  final String term;
  final double price;
  final bool availability;
  final List<String> images;
  final String description;
  final List<Response> responses;

  Product({
    required this.name,
    required this.term,
    required this.price,
    required this.availability,
    required this.images,
    required this.description,
    required this.responses,
  });
}
