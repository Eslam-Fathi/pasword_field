import 'package:bloc/bloc.dart';

import 'password_visibility_state.dart';

class PasswordVisibilityCubit extends Cubit<PasswordVisibilityState> {
  PasswordVisibilityCubit() : super(const PasswordVisibilityState(false));

  void toggleVisibility() {
    emit(PasswordVisibilityState(!state.visible));
  }
}
