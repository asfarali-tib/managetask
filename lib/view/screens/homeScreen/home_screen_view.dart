import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:managetask/features/login/bloc/login_bloc.dart';
// import 'package:managetask/router/app_routes.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: InkWell(onTap: (){context.push('/profileScreen');}, child: const Text('Home'))),
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
            }
            return const Center(child: Text('Not logged in'));
          },
        ),
      ),
    );
  }
}
