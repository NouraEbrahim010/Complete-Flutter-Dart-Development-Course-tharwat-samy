import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custeum_button.dart';
import 'package:store_app/widgets/custum_text_field.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static const String id = 'UpdateProductPage';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, description, imageUrl, price;
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    List<ProductModel> product = args['product'];
    int index = args['index'];
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                CustomTextField(
                  onChanged: (data) => productName = data,
                  hintText: 'Enter Product Name',
                  labelText: 'Product Name',
                  obscureText: false,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  onChanged: (data) => description = data,
                  hintText: 'Enter Product Description',
                  labelText: 'Product Description',
                  obscureText: false,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  onChanged: (data) => price = data,
                  hintText: 'Enter Product Price',
                  labelText: 'Product Price',
                  obscureText: false,
                  inputType: TextInputType.number,
                ),

                const SizedBox(height: 16),
                CustomTextField(
                  onChanged: (data) => imageUrl = data,
                  hintText: 'image',
                  labelText: 'Product Image',
                  obscureText: false,
                ),
                const SizedBox(height: 32),
                CustumButton(
                  label: 'Update Product',
                  ontap: () async {
                    isloading = true;
                    setState(() {});
                    try {
                      await updateProduct(product, index);
                      print('success');
                    } catch (e) {
                      print(e.toString());
                      setState(() {});
                      isloading = false;
                    }
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(List<ProductModel> product, int index) async {
    await UpdateProductService().updateProduct(
      title: productName == null ? product[index].title : productName!,
      description: description == null
          ? product[index].description
          : description!,
      price: price == null ? product[index].price.toString() : price!,
      image: imageUrl == null ? product[index].image : imageUrl!,
      category: product[index].category,
      id: product[index].id,
    );
  }
}
