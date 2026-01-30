import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String title,
    required String description,
    required String price,
    required String image,
    required String category,
    required dynamic id,
  }) async {
    print('id=$id');
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'description': description,
        'price': price,
        'image': image,
        'category': category,
        'id': id.toString(),
      },
    );
    return ProductModel.fromJson(data);
  }
}
