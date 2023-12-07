import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:example/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Register".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Beranda".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.berandaScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cari - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cariContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edukasi".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.edukasiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Beranda One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.berandaOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tambah".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tambahScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tambah Postingan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tambahPostinganScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile Beranda One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editProfileBerandaOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Akun Peternak".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.akunPeternakScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile Beranda Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editProfileBerandaTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile Beranda".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editProfileBerandaScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FAQ Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faqTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FAQ One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faqOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Produk Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.produkFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Produk One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.produkOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Produk Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.produkFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Produk".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.produkScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Produk Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.produkSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Komunitas".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.komunitasScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Komunitas Grup Chat ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.komunitasGrupChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Card Edukasi".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cardEdukasiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Edukasi".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailEdukasiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile Two - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Produk Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.produkThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat Personal One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatPersonalOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Pesanan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pesananScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Pesanan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailPesananScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bukti Pembayaran".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.buktiPembayaranScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cari Hewan".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cariHewanScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Produk".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailProdukScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat  One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat Personal".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatPersonalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "keranjang produk peternakan".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.keranjangProdukPeternakanScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Checkout".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "pembayaran".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pembayaranScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Komunitas One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.komunitasOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detail Komunitas".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailKomunitasScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "keranjang peternakan".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.keranjangPeternakanScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "belum bayar".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.belumBayarScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sedang diproses".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sedangDiprosesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Rincian Pembayaran".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.rincianPembayaranScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FAQ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faqScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FAQ Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faqThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Komunitas Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.komunitasTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Hewan ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hewanScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Hewan_1 ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hewan1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Hewan_FILTER ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hewanFilterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Hewan_Urutan ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hewanUrutanScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Hewan_Kondisi Hewan ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hewanKondisiHewanScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Hewan_Status Hewan ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hewanStatusHewanScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
