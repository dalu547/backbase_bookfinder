import 'package:logger/logger.dart';

class AppLogger {
  AppLogger._();

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );

  static void trace(String? message) => _logger.t(message);
  static void debug(String? message) => _logger.d(message);
  static void info(String? message) => _logger.i(message);
  static void warning(String? message) => _logger.w(message);
  static void error(String? message, {error}) =>
      _logger.e(message, error: error);
  static void fatal(String? message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.f(message, error: error, stackTrace: stackTrace);
}
