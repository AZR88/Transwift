import 'package:get_it/get_it.dart';

import 'repos/auth_repo/auth_repo.dart';

final lc = GetIt.instance;

Future<void> initializeDependencies() async {
  lc.registerLazySingleton(() => AuthRepo());
}