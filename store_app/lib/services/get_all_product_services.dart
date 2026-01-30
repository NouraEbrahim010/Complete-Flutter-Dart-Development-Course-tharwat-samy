import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProductServices {
  //final dio=Dio();
  // List<ProductModel>getAllProduct(){
  // Response response =  dio.get('https://fakestoreapi.com/products');
  // response.map<ProductModel>((json) => ProductModel.fromJson(json))
  //       .toList();
  // }

  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );

    List<ProductModel> products = data
        .map<ProductModel>((json) => ProductModel.fromJson(json))
        .toList();
    return products;
  }
}
