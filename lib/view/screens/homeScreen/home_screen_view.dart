import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managetask/features/login/bloc/login_bloc.dart';
// import 'package:managetask/utils/colors.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is LoginLoaded) {
              return Column(
                children: [
                  Text('Welcome, ${state.loginResponseModel.data?.firstName}', style: const TextStyle(fontSize: 24)),
                  Text('Email: ${state.loginResponseModel.data?.email}', style: const TextStyle(fontSize: 18)),
                ],
              );
            } else if(state is LoginError){
              return Center(
                child: Text(state.loginResponseModel.isSuccess.toString()),
              );
            }
            return Center(child: Text('Not logged in $state'));
          },
        ),
      ),
    );
  }
}