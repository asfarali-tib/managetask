import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managetask/features/login/bloc/login_bloc.dart';

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({super.key});

  @override
  State<ProfileScreenView> createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is LoginLoaded) {
              return Column(
                children: [
                  Text('Welcome, ${state.loginResponseModel.data?.firstName}', style: const TextStyle(fontSize: 24)),
                  // Text('Email: ${state.loginResponseModel.data?.email}', style: const TextStyle(fontSize: 18)),
                ],
              );
            }
            return const Center(child: Text('Not logged in'));
          },
        ),
      ),
    );
  }
}