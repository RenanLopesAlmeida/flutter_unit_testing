import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/app/modules/product/product_controller.dart';
import 'package:flutter_tests/app/modules/product/product_model.dart';

main() {
  group('Products Tests', () {
    test('Product list should start empty', () {
      expect(ProductController().products, []);
    });

    test('Adding a product to product list', () {
      ProductModel product = ProductModel(
        id: DateTime.now().toString(),
        name: 'T-shirt',
        price: 29.99,
      );

      ProductController productController = ProductController();
      final int oldProductQuantity = productController.products.length;
      productController.addProduct(product);

      expect(productController.products.length, oldProductQuantity + 1);
    });
  });
}
