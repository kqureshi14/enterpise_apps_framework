import 'package:auto_route/auto_route.dart';

import 'package:framework/constants/constants.dart';
import 'package:framework/services/navigation/router.gr.dart';

export 'router.gr.dart';

abstract class Routes {
  static const login = '/login';
  static const forgotPassword = '/forgotPassword';
  static const splash = '/splash';
  static const customers = '/customers';
  static const activities = '/activitys';
  static const recordListApprover = '/recordapprovers';
  static const projects = '/projects';
  static const workspaces = '/workspaces';
  static const menu = '/menu';
  static const extensionIFrame = '/extensionsIFrame';
  static const profile = '/profile';
  static const dashboard = '/dashboard';
  static const dashboardList = '/dashboard_list';
  static const forms = '/forms/';
  static const records = '/forms/:formId';
  static const masterRecords = '/masterRecords/:masterRefId';
  static const masterForm = '/masterForm';
  static const customForm = '/custom_form/:${Strings.formIdParam}';
  static const innerCheckListItem = '/inner_checklist_item';
  static const qrScanner = '/qr_scanner';
  static const mainProfile = '/main_profile';
  static const profileSwitcher = '/profile_switcher';
  static const profileInformation = '/profile_information';
  static const changePassword = '/change_password';
  static const accountSettings = '/account_settings';
  static const makeOffline = '/make_offline';
}

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: '/'),
    AutoRoute(page: LoginRoute.page, path: Routes.login),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}
