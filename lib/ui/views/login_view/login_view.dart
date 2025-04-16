import 'package:chessjoin/infra/states/user_state.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final UserState state = UserStateWithError(
      errorMessage: 'Deu erro na aplicação',
    );

    if (state is UserStateLoading) {
      return Scaffold(
        body: const Center(
          child: Text('Loading...', style: TextStyle(fontSize: 20)),
        ),
      );
    }

    if (state is UserStateWithError) {
      return Scaffold(
        body: Center(
          child: Text(
            state.errorMessage,
            style: const TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
      );
    }

    return SizedBox();
  }
}
