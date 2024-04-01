import 'package:flutter/cupertino.dart';

import 'package:framework/base/base.dart';
import 'package:framework/services/services.dart';
import 'package:framework/setup.dart';

abstract class BaseView<T extends BaseViewModel> extends ResponsiveWidget {
  BaseView({Key? key})
      : super(
          deviceService: locateService<IDeviceService>(),
          key: key,
        ) {
    _viewModel = locateService<T>();
  }

  late final T _viewModel;

  T get viewModel => _viewModel;
}
