import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasword_field/password_form.dart';

import 'cubit/password_visibility_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordVisibilityCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Password Field',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Password Field'),
          ),
          body: const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: PasswordTextField(),
            ),
          ),
        ),
      ),
    );
  }
}
