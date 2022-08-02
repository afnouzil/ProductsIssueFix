import 'package:dio/dio.dart';
import 'package:education_app/model/carts/cart.dart';
import 'package:education_app/model/carts/carts.dart';

Future<List<Cart>?> getCart() async {
  const String url = 'https://dummyjson.com/carts';
  final Response response = await Dio().get(url);
  late List<Cart>? carts;
  if (response.statusCode == 200 || response.statusCode == 201) {
    carts = Carts.fromJson(response.data).carts;
  }
  return carts;
}