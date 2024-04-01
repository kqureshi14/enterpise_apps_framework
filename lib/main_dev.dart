import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'package:framework/app.dart';
import 'package:framework/setup.dart';
import 'package:framework/app_config.dart';
import 'package:framework/constants/constants.dart';



void main() async {
  var devAppConfig = AppConfig(
    appName: Strings.appName,
    flavor: Flavor.dev,
    baseUrl: Api.baseURL,
  );

  await configureDependencies(devAppConfig);

  runApp(locateService<App>());
}
