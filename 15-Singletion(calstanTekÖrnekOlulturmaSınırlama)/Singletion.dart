import 'Model/Tekrar.dart';
import 'Model/product.dart';

void main() {
  print(ProductSingletion.productSingletion.apikey);
  print(ProductLazySingletion.instance);

  print(SingletionPro.singletionPro.apikey);

  print(SingletionLazyPro.instance.apikey);
}
