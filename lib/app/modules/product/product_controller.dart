import 'package:flutter_tests/app/modules/product/product_model.dart';

class ProductController {
  List<ProductModel> products;

  void addProduct(ProductModel product) => products.add(ProductModel(
        id: product.id,
        name: product.name,
        price: product.price,
      ));
}
