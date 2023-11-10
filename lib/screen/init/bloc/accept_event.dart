part of 'accept_bloc.dart';

@immutable
abstract class AcceptEvent {}

class AEbutton extends AcceptEvent {
  final bool accepted;

  AEbutton(this.accepted);
}

class AEshowPopup extends AcceptEvent {
  final BuildContext context;

  AEshowPopup(this.context);
}
