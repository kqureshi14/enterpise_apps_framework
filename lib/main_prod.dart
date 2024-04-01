import 'package:flutter/material.dart';

import 'package:framework/app.dart';
import 'package:framework/setup.dart';
import 'package:framework/app_config.dart';
import 'package:framework/constants/constants.dart';


void main() async {
  var prodAppConfig = AppConfig(
    appName: Strings.appName,
    flavor: Flavor.prod,
    baseUrl: Api.prodURL,
  );
  await configureDependencies(prodAppConfig);



  runApp(locateService<App>());
}
