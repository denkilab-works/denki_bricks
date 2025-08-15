import 'package:{{package_name}}/exceptions/repository_exception.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:talker/talker.dart';

abstract class Repository {
  const Repository();

  Future<T> safeCode<T>(Future<T> Function() block) async {
    try {
      return await block();
    } catch (error, stack) {
      await Sentry.captureException(error, stackTrace: stack);
      throw RepositoryException(error.toString());
    }
  }
}

extension RepositoryStream<T> on Stream<T> {
  Stream<T> safeCode(Talker logger) =>
      handleError((Object error, StackTrace stack) async {
        logger.error('[Repository] Stream error: ', error, stack);
        await Sentry.captureException(error, stackTrace: stack);
      });
}
