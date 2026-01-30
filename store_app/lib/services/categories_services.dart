import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCategoryProducts({
    required String categoryName,
  }) async {
    // Use the http package to make a GET request to the API
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );
    List<ProductModel> categoryProducts = data
        .map<ProductModel>((json) => ProductModel.fromJson(json))
        .toList();
    return categoryProducts;
  }

  //https://fakestoreapi.com/products/category/:category_name
  //:category_name=> this is a path variable we need to replace it with actual category name
}
