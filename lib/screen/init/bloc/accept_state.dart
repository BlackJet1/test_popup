part of 'accept_bloc.dart';

@immutable
abstract class AcceptState {}

class SingleState extends AcceptState {
  final bool accepted;

  SingleState({this.accepted = false});
}


