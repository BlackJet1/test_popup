import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../popup_widget.dart';

part 'accept_event.dart';

part 'accept_state.dart';

class AcceptBloc extends Bloc<AcceptEvent, AcceptState> {
  AcceptBloc() : super(SingleState(accepted: false)) {
    on<AEshowPopup>((event, emit) {
      Scaffold.of(event.context).showBottomSheet((context) => popup(context));
    });
    on<AEbutton>((event, emit) {
      emit(SingleState(accepted: event.accepted));
    });
  }
}
