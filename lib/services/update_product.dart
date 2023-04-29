import 'package:store_app/models/product_model.dart';
import 'package:store_app/helpers/api.dart';

class UpdateProduct{
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'descreption': desc,
        'image': image,
        'category': category,
      },
    );

    return ProductModel.fromJson(data);
  }
}