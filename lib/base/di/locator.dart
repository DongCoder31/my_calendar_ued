import 'package:get_it/get_it.dart';

import '../../remote/local/shared_prefs.dart';
import '../../remote/service/api_client.dart';

//sử dụng GetIt để tạo và quản lý các dependencies , trả về GetIt và cho phép cập nhật và truy cập dependencies  đa đuợc đăng ký
GetIt locator = GetIt.instance;

void setUpInjector() {
  // đăng ký SharedPrefs, ApiClient;
  // Quản lý thông tin user khi login
  locator.registerLazySingleton(() => SharedPrefs());
  // quản lý api client
  locator.registerLazySingleton(() => ApiClient());
}


