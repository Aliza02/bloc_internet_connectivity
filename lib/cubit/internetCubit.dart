import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetState { initial, disConnected, connected }

class InternetCubit extends Cubit<InternetState> {
  Connectivity conn = Connectivity();
  StreamSubscription? connectivitySubscription;
  InternetCubit() : super(InternetState.initial) {
    connectivitySubscription = conn.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        emit(InternetState.connected);
      } else {
        emit(InternetState.disConnected);
      }
    });
  }

  @override
  Future<void> close() {
    connectivitySubscription?.cancel();
    return super.close();
  }
}
