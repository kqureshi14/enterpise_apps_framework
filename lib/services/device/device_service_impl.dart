import 'package:framework/helpers/device_helper.dart';
import 'package:framework/services/services.dart';

class DeviceServiceImpl implements IDeviceService {
  @override
  ScreenSizeData screenSizeData() {
    return DeviceHelper.screenSizeData();
  }
}
