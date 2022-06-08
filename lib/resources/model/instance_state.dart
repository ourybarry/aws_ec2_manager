import 'package:deep_pick/deep_pick.dart';

class InstanceState {
  final int code;
  final String name;

  const InstanceState(this.code, this.name);

  factory InstanceState.fromPick(RequiredPick pick) {
    final int code = pick('Code').asIntOrThrow();
    final String name = pick('Name').asStringOrThrow();

    return InstanceState(code, name);
  }
}
