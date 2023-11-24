import 'package:get/get.dart';

import '../modules/about_us/bindings/about_us_binding.dart';
import '../modules/about_us/views/about_us_view.dart';
import '../modules/addition_share_purchase/bindings/addition_share_purchase_binding.dart';
import '../modules/addition_share_purchase/views/addition_share_purchase_view.dart';
import '../modules/bank_info_detail/bindings/bank_info_detail_binding.dart';
import '../modules/bank_info_detail/views/bank_info_detail_view.dart';
import '../modules/check_status/bindings/check_status_binding.dart';
import '../modules/check_status/views/check_status_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/legal/bindings/legal_binding.dart';
import '../modules/legal/views/legal_view.dart';
import '../modules/member_cont_acknowledgement/bindings/member_cont_acknowledgement_binding.dart';
import '../modules/member_cont_acknowledgement/views/member_cont_acknowledgement_view.dart';
import '../modules/member_contribution/bindings/member_contribution_binding.dart';
import '../modules/member_contribution/views/member_contribution_view.dart';
import '../modules/memeber_ledger/bindings/memeber_ledger_binding.dart';
import '../modules/memeber_ledger/views/memeber_ledger_view.dart';
import '../modules/memeber_receipt/bindings/memeber_receipt_binding.dart';
import '../modules/memeber_receipt/views/memeber_receipt_view.dart';
import '../modules/pay_partial_installment/bindings/pay_partial_installment_binding.dart';
import '../modules/pay_partial_installment/views/pay_partial_installment_view.dart';
import '../modules/share_acknowledgement/bindings/share_acknowledgement_binding.dart';
import '../modules/share_acknowledgement/views/share_acknowledgement_view.dart';
import '../modules/share_registration/bindings/share_registration_binding.dart';
import '../modules/share_registration/views/share_registration_view.dart';
import '../modules/update_reg_mob/bindings/update_reg_mob_binding.dart';
import '../modules/update_reg_mob/views/update_reg_mob_view.dart';
import '../modules/view_member_status/bindings/view_member_status_binding.dart';
import '../modules/view_member_status/views/view_member_status_view.dart';

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
    GetPage(
      name: _Paths.CHECK_STATUS,
      page: () => const CheckStatusView(),
      binding: CheckStatusBinding(),
    ),
    GetPage(
      name: _Paths.PAY_PARTIAL_INSTALLMENT,
      page: () => const PayPartialInstallmentView(),
      binding: PayPartialInstallmentBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_MEMBER_STATUS,
      page: () => const ViewMemberStatusView(),
      binding: ViewMemberStatusBinding(),
    ),
    GetPage(
      name: _Paths.ADDITION_SHARE_PURCHASE,
      page: () => const AdditionSharePurchaseView(),
      binding: AdditionSharePurchaseBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_REG_MOB,
      page: () => const UpdateRegMobView(),
      binding: UpdateRegMobBinding(),
    ),
    GetPage(
      name: _Paths.SHARE_ACKNOWLEDGEMENT,
      page: () => const ShareAcknowledgementView(),
      binding: ShareAcknowledgementBinding(),
    ),
    GetPage(
      name: _Paths.MEMBER_CONT_ACKNOWLEDGEMENT,
      page: () => const MemberContAcknowledgementView(),
      binding: MemberContAcknowledgementBinding(),
    ),
    GetPage(
      name: _Paths.MEMEBER_RECEIPT,
      page: () => const MemeberReceiptView(),
      binding: MemeberReceiptBinding(),
    ),
    GetPage(
      name: _Paths.MEMEBER_LEDGER,
      page: () => const MemeberLedgerView(),
      binding: MemeberLedgerBinding(),
    ),
    GetPage(
      name: _Paths.BANK_INFO_DETAIL,
      page: () => const BankInfoDetailView(),
      binding: BankInfoDetailBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_US,
      page: () => const AboutUsView(),
      binding: AboutUsBinding(),
    ),
    GetPage(
      name: _Paths.LEGAL,
      page: () => const LegalView(),
      binding: LegalBinding(),
    ),
  ];
}
