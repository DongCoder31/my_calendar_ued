import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visibility_detector/visibility_detector.dart';
import '../components/error_popup.dart';
import '../components/loading_popup.dart';
import 'base_viewmodel.dart';

mixin MixinBasePage<T extends BaseViewModel> {
  late T _provider;

  T get provider => _provider;

  @protected
  T create();

  @protected
  void initialise(BuildContext context);

  Widget builder(Widget Function() builder) =>
      ChangeNotifierProvider<T>(create: (context) {
        _provider = create();

        _provider.onShowLoading = () {
          LoadingPopup.show(context);
        };

        _provider.onHideLoading = () {
          Navigator.of(context).pop();
        };

        _provider.onShowError = (message) {
          ErrorPopup.show(context, message);
        };

        initialise(context);

        return _provider;
      }, child: Consumer<T>(
        builder: (context, provider, _) {
          _provider = provider;

          return VisibilityDetector(
              onVisibilityChanged: (info) {
                if (info.visibleFraction >= 1) {
                  try {
                    //     _provider.appear();
                  } catch (_) {}
                } else if (info.visibleFraction <= 0) {
                  try {
                    //     _provider.disAppear();
                  } catch (_) {}
                }
              },
              key: Key(T.toString()),
              child: GestureDetector(
                child: builder.call(),
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ));
        },
      ));
}
/*
Import các package và thư viện cần thiết như flutter/material.dart, provider/provider.dart, visibility_detector/visibility_detector.dart, và các file khác trong dự án.
Định nghĩa mixin MixinBasePage<T extends BaseViewModel>. T là một kiểu tham số generic và phải kế thừa từ lớp BaseViewModel.
Khai báo biến _provider kiểu T để lưu trữ thể hiện của lớp view model.
Định nghĩa phương thức create() và initialise(BuildContext context) để được cài đặt trong các lớp con sử dụng mixin này.
Phương thức builder() được sử dụng để xây dựng cây widget và cung cấp ChangeNotifierProvider cho lớp view model T.
Trong phương thức create(), _provider được khởi tạo bằng cách gọi phương thức create() và thiết lập các hành động cho hiển thị loading, ẩn loading và hiển thị lỗi.
Trong phương thức initialise(BuildContext context), các hành động ban đầu được thực hiện sau khi lớp view model T được tạo.
Phương thức builder() trả về một cây widget gồm ChangeNotifierProvider và Consumer. Trong Consumer, _provider được cung cấp cho builder và cây widget được bao bọc trong VisibilityDetector và GestureDetector.

__ Khi một widget được đặt trong VisibilityDetector, nó sẽ theo dõi sự thay đổi về tình trạng hiển thị của nó trên màn hình. Khi tình trạng hiển thị của widget thay đổi (ví dụ: nó được hiển thị trên màn hình hoặc bị ẩn), bạn có thể thực hiện các hành động tương ứng.

Có hai hàm quan trọng trong VisibilityDetector:

onVisibilityChanged: Đây là một hàm được gọi khi tình trạng hiển thị của widget thay đổi. Hàm này nhận một đối số visibilityInfo kiểu VisibilityInfo, chứa thông tin về tình trạng hiển thị mới của widget.

key: Một khóa duy nhất để xác định widget trong cây widget. Điều này giúp VisibilityDetector xác định và theo dõi widget đúng khi tình trạng hiển thị thay đổi.
__ FocusScope.of(context).requestFocus(FocusNode()) được sử dụng để gửi yêu cầu tập trung (focus) khỏi bất kỳ phần tử nào đang có focus trong widget hiện tại.

Khi một widget nhận được sự tương tác từ người dùng (ví dụ: khi người dùng nhấn vào widget), widget đó có thể nhận được focus. Điều này có thể gây ra vấn đề khi widget đó giữ focus và không chịu bỏ focus khi người dùng tương tác với một phần tử khác trong ứng dụng.

Để giải quyết vấn đề này, FocusScope.of(context).requestFocus(FocusNode()) được sử dụng để yêu cầu bỏ focus khỏi tất cả các phần tử có focus trong widget hiện tại, đồng thời đưa focus về một FocusNode mới.
 */