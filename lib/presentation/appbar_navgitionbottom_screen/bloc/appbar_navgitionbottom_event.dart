// ignore_for_file: must_be_immutable

part of 'appbar_navgitionbottom_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppbarNavgitionbottom widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppbarNavgitionbottomEvent extends Equatable {}

/// Event that is dispatched when the AppbarNavgitionbottom widget is first created.
class AppbarNavgitionbottomInitialEvent extends AppbarNavgitionbottomEvent {
  @override
  List<Object?> get props => [];
}
