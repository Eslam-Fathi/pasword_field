import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/password_visibility_cubit.dart';
import 'cubit/password_visibility_state.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordVisibilityCubit, PasswordVisibilityState>(
      bloc: context.read<PasswordVisibilityCubit>(),
      builder: (context, state) {
        return TextField(
          obscureText: !state.visible,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon:
                  Icon(state.visible ? Icons.visibility_off : Icons.visibility),
              onPressed: () =>
                  context.read<PasswordVisibilityCubit>().toggleVisibility(),
            ),
            hintText: 'Password',
          ),
        );
      },
    );
  }
}
