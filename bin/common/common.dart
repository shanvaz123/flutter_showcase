void throwToolExit(String message, {required int exitCode}) {
  throw ToolExit(message, exitCode: exitCode);
}

class ToolExit implements Exception {
  ToolExit(this.message, {required this.exitCode});

  final String message;
  final int exitCode;

  @override
  String toString() => 'Exception: $message';
}
