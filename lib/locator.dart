import 'package:dello/services/shared_preference_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton(() => SharedPreferencesService());
}
