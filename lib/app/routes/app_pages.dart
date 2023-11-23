import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/member_contribution/bindings/member_contribution_binding.dart';
import '../modules/member_contribution/views/member_contribution_view.dart';
import '../modules/share_registration/bindings/share_registration_binding.dart';
import '../modules/share_registration/views/share_registration_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SHARE_REGISTRATION,
      page: () => const ShareRegistrationView(),
      binding: ShareRegistrationBinding(),
    ),
    GetPage(
      name: _Paths.MEMBER_CONTRIBUTION,
      page: () => const MemberContributionView(),
      binding: MemberContributionBinding(),
    ),
  ];
}
