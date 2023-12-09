import 'package:bloc_internet_connectivity/bloc/internetbloc.dart';
import 'package:bloc_internet_connectivity/cubit/internetCubit.dart';
import 'package:bloc_internet_connectivity/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Internet Connectivity',
        home: HomeScreen(),
      ),
    );
  }
}
