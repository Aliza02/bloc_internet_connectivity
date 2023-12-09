// import 'dart:async';

// import 'package:bloc_internet_connectivity/bloc/states/internet_states.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'events/internet_events.dart';
// import 'package:connectivity/connectivity.dart';

// class InternetBloc extends Bloc<InternetEvent, InternetState> {
//   Connectivity connectivity = Connectivity();
//   StreamSubscription? connectivitySubscription;

//   InternetBloc() : super(InternetInitialState()) {
//     on<InternetDisconnected>((event, emit) => emit(InternetLostState()));
//     on<InternetConnected>((event, emit) => emit(InternetConnectedState()));

//     connectivitySubscription=connectivity.onConnectivityChanged.listen((result) {
//       if (result == ConnectivityResult.mobile ||
//           result == ConnectivityResult.wifi) {
//         add(InternetConnected());
//       } else {
//         add(InternetDisconnected());
//       }
//     });
//   }

//   @override

//   Future<void> close(){
//     connectivitySubscription?.cancel();
//     return super.close();
//   }
// }
