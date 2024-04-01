import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'package:framework/app.dart';
import 'package:framework/setup.dart';
import 'package:framework/app_config.dart';
import 'package:framework/constants/constants.dart';


void main() async {
  var prodAppConfig = AppConfig(
    appName: Strings.synkratoApp,
    flavor: Flavor.synkrato,
    baseUrl: Api.synkratoURL,
  );

  await configureDependencies(prodAppConfig);

  runApp(locateService<App>());
}
