// ignore_for_file: must_be_immutable

part of 'product_category_ai_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductCategoryAi widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductCategoryAiEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ProductCategoryAi widget is first created.
class ProductCategoryAiInitialEvent extends ProductCategoryAiEvent {
  @override
  List<Object?> get props => [];
}
