// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

import 'package:delivey_app/app/models/product_model.dart';

part 'home_state.g.dart';

@match
enum HomeStateStatus {
  initial,
  loading,
  loaded,
  error,
}

class HomeState extends Equatable {
  final HomeStateStatus status;
  final List<ProductModel> product;
  final String errorMessage;

  const HomeState({
    required this.status,
    required this.product,
    required this.errorMessage,
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        product = const [],
        errorMessage = '';

  @override
  List<Object?> get props => [status, product,errorMessage];

  HomeState copyWith({
    HomeStateStatus? status,
    List<ProductModel>? product,
    String? errorMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      product: product ?? this.product,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
