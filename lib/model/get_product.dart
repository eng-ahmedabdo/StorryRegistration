import 'package:super_market/generated/assets.dart';
import 'package:super_market/model/product_model.dart';

List<ProductModel> getProducts(){
  List<ProductModel> products = [];
  ProductModel productModel = ProductModel();
  productModel.image = Assets.assetsProduct1;
  products.add(productModel);

  productModel = ProductModel();
  productModel.image = Assets.assetsProduct2;
  products.add(productModel);

  productModel = ProductModel();
  productModel.image = Assets.assetsProduct3;
  products.add(productModel);

  productModel = ProductModel();
  productModel.image = Assets.assetsProduct4;
  products.add(productModel);

  productModel = ProductModel();
  productModel.image = Assets.assetsProduct2;
  products.add(productModel);

  productModel = ProductModel();
  productModel.image = Assets.assetsProduct3;
  products.add(productModel);

  productModel = ProductModel();
  productModel.image = Assets.assetsProduct4;
  products.add(productModel);

  return products;
}