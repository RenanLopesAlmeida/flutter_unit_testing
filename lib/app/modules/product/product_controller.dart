import 'package:flutter_tests/app/modules/product/product_model.dart';

class ProductController {
  List<ProductModel> _products = [];

  List<ProductModel> get products => [..._products];

  addProduct(ProductModel product) => _products.add(ProductModel(
        id: product.id,
        name: product.name,
        price: product.price,
      ));

  bool get isProductsListEmpty => _products.isEmpty;
}
