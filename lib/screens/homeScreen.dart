import 'package:bloc_internet_connectivity/bloc/internetbloc.dart';
import 'package:bloc_internet_connectivity/bloc/states/internet_states.dart';
import 'package:bloc_internet_connectivity/widgets/states_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Internet Connectivity'),
      ),
      body: Center(
        child: BlocConsumer<InternetBloc, InternetState>(
          builder: (context, state) {
            if (state is InternetConnectedState) {
              return const ShowInternetStatus(
                title: 'Internet Connected',
                subTitle: 'Please proceed with your work',
                icon: Icons.wifi,
              );
            } else if (state is InternetLostState) {
              return const ShowInternetStatus(
                title: 'No Internet Connection',
                subTitle:
                    'please check your internet connectivity and try again',
                icon: Icons.wifi_off,
              );
            } else {
              return const ShowInternetStatus(
                title: 'Initial State',
                subTitle: 'Turn on/off internet to test',
                icon: Icons.work,
              );
            }
          },
          listener: (context, state) {
            if (state is InternetConnectedState) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Internet Connected'),
                  backgroundColor: Colors.orange,
                ),
              );
            } else if (state is InternetLostState) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('No Internet Connection'),
                  backgroundColor: Colors.orange,
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Initial State'),
                  backgroundColor: Colors.orange,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
