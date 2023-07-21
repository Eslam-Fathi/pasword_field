class PasswordVisibilityState {
  final bool visible;

  const PasswordVisibilityState(this.visible);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordVisibilityState &&
          runtimeType == other.runtimeType &&
          visible == other.visible;

  @override
  int get hashCode => visible.hashCode;
}
