import 'dart:developer';

import 'package:delivey_app/app/core/client/custon_dio.dart';
import 'package:delivey_app/app/models/product_model.dart';
import 'package:dio/dio.dart';

import '../../core/exceptions/repository_exception.dart';
import './product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
final CustonDio dio;

  ProductRepositoryImpl({required this.dio});

  @override
  Future<List<ProductModel>> findAllProducts() async {
   try {
  final result = await dio.auth().get('/products');
  return result.data.map<ProductModel>((p)=> ProductModel.fromMap(p)).toList();
} on DioError catch (e, s) {
  log('Erro ao buscar produtos', error:e, stackTrace:s);
  throw RepositoryException(message:'Erro ao buscar produtos');
}
  }

}