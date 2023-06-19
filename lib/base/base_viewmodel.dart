import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
// import 'package:my_calendar_flutter/generated/l10n.dart';
// import '../main.dart';
import '../remote/local/shared_prefs.dart';
import '../remote/service/api_client.dart';
import 'di/locator.dart';

abstract class BaseViewModel extends ChangeNotifier {
  final api = locator<ApiClient>();
  final prefs = locator<SharedPrefs>();
  bool _isFirst = true;
  bool _showLoading = false;
  late VoidCallback onShowLoading, onHideLoading;
  late void Function(String) onShowError;

  BaseViewModel() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onInit();
    });
  }

  @protected
  void onInit();

  void showLoading() {
    if (!_showLoading) {
      _showLoading = true;
      onShowLoading.call();
    }
  }

  void hideLoading() {
    if (_showLoading) {
      _showLoading = false;
      onHideLoading.call();
    }
  }

  void showError(String message) {
    hideLoading();
    onShowError.call(message);
  }

  void showErrorConnection() {
    hideLoading();

    (Connectivity().checkConnectivity()).then((value) {
      if (value == ConnectivityResult.none) {
        // showError(S.of(MedicalApp.context!).message_error_lost_connect);
        return;
      }

      // showError(S.of(MedicalApp.context!).message_error_process_failed);
    });
  }

  void appear() {
    if (_isFirst) {
      _isFirst = false;
      return;
    }

    try {
      //  onAppear.call();
    } catch (_) {}
  }

  // external void onAppear();

  void disAppear() {
    if (_isFirst) return;

    try {
      //   onDisAppear();
    } catch (_) {}
  }

  // external void onDisAppear();
}
/*
-- WidgetsBinding.instance.addPostFrameCallback được sử dụng để gọi một hàm sau khi Flutter đã vẽ xong màn hình đầu tiên. Nó được sử dụng trong hàm khởi tạo của lớp BaseViewModel.
-- api là một đối tượng ApiClient được lấy từ locator. ApiClient được sử dụng để thực hiện các yêu cầu API và truy cập dữ liệu từ máy chủ.
prefs là một đối tượng SharedPrefs được lấy từ locator. SharedPrefs được sử dụng để quản lý dữ liệu cục bộ, như lưu trữ thông tin người dùng hoặc cài đặt ứng dụng.
_isFirst là một biến boolean để kiểm tra xem ViewModel có được khởi tạo lần đầu tiên hay không.
_showLoading là một biến boolean để kiểm soát trạng thái hiển thị loading.
onShowLoading và onHideLoading là các hàm callback để hiển thị và ẩn loading, được gán giá trị trong lớp kế thừa từ BaseViewModel.
onShowError là một hàm callback để hiển thị thông báo lỗi, được gán giá trị trong lớp kế thừa từ BaseViewModel.
onInit là một phương thức trừu tượng để khởi tạo ViewModel. Nó được gọi sau khi widget được xây dựng xong.
Các phương thức showLoading, hideLoading và showError được sử dụng để quản lý trạng thái loading và hiển thị thông báo lỗi trong ViewModel. Phương thức showErrorConnection kiểm tra kết nối mạng và hiển thị thông báo lỗi tương ứng.

Lớp BaseViewModel đóng vai trò là một lớp cơ sở cho các ViewModel cụ thể trong ứng dụng, cung cấp các phương thức và thuộc tính chung để quản lý trạng thái và tương tác. Các lớp ViewModel con sẽ kế thừa từ BaseViewModel và triển khai các phương thức trừu tượng để xử lý logic cụ thể của từng màn hình.
 */