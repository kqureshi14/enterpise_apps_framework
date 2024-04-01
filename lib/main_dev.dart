import 'package:flutter/material.dart';

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
