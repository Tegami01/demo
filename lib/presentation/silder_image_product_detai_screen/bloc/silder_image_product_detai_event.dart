// ignore_for_file: must_be_immutable

part of 'silder_image_product_detai_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SilderImageProductDetai widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SilderImageProductDetaiEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SilderImageProductDetai widget is first created.
class SilderImageProductDetaiInitialEvent extends SilderImageProductDetaiEvent {
  @override
  List<Object?> get props => [];
}
