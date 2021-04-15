import 'package:get/get.dart';

import 'package:flutter_application_1/app/modules/bagikan/bindings/bagikan_binding.dart';
import 'package:flutter_application_1/app/modules/bagikan/views/bagikan_view.dart';
import 'package:flutter_application_1/app/modules/bagikan_2/bindings/bagikan_2_binding.dart';
import 'package:flutter_application_1/app/modules/bagikan_2/views/bagikan_2_view.dart';
import 'package:flutter_application_1/app/modules/buat_soal_buat/bindings/buat_soal_buat_binding.dart';
import 'package:flutter_application_1/app/modules/buat_soal_buat/views/buat_soal_buat_view.dart';
import 'package:flutter_application_1/app/modules/buat_soal_isi/bindings/buat_soal_isi_binding.dart';
import 'package:flutter_application_1/app/modules/buat_soal_isi/views/buat_soal_isi_view.dart';
import 'package:flutter_application_1/app/modules/buat_soal_selesai/bindings/buat_soal_selesai_binding.dart';
import 'package:flutter_application_1/app/modules/buat_soal_selesai/views/buat_soal_selesai_view.dart';
import 'package:flutter_application_1/app/modules/butir_soal/bindings/butir_soal_binding.dart';
import 'package:flutter_application_1/app/modules/butir_soal/views/butir_soal_view.dart';
import 'package:flutter_application_1/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter_application_1/app/modules/dashboard/views/dashboard_view.dart';
import 'package:flutter_application_1/app/modules/hasil/bindings/hasil_binding.dart';
import 'package:flutter_application_1/app/modules/hasil/views/hasil_view.dart';
import 'package:flutter_application_1/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_application_1/app/modules/home/views/home_view.dart';
import 'package:flutter_application_1/app/modules/login/bindings/login_binding.dart';
import 'package:flutter_application_1/app/modules/login/views/login_view.dart';
import 'package:flutter_application_1/app/modules/nilai/bindings/nilai_binding.dart';
import 'package:flutter_application_1/app/modules/nilai/views/nilai_view.dart';
import 'package:flutter_application_1/app/modules/paket_soal/bindings/paket_soal_binding.dart';
import 'package:flutter_application_1/app/modules/paket_soal/views/paket_soal_view.dart';
import 'package:flutter_application_1/app/modules/penilaian_akhir/bindings/penilaian_akhir_binding.dart';
import 'package:flutter_application_1/app/modules/penilaian_akhir/views/penilaian_akhir_view.dart';
import 'package:flutter_application_1/app/modules/preview_paket_soal/bindings/preview_paket_soal_binding.dart';
import 'package:flutter_application_1/app/modules/preview_paket_soal/views/preview_paket_soal_view.dart';
import 'package:flutter_application_1/app/modules/preview_paket_soal_2/bindings/preview_paket_soal_2_binding.dart';
import 'package:flutter_application_1/app/modules/preview_paket_soal_2/views/preview_paket_soal_2_view.dart';
import 'package:flutter_application_1/app/modules/preview_paket_soal_3/bindings/preview_paket_soal_3_binding.dart';
import 'package:flutter_application_1/app/modules/preview_paket_soal_3/views/preview_paket_soal_3_view.dart';
import 'package:flutter_application_1/app/modules/profil_2/bindings/profil_2_binding.dart';
import 'package:flutter_application_1/app/modules/profil_2/views/profil_2_view.dart';
import 'package:flutter_application_1/app/modules/profile/bindings/profile_binding.dart';
import 'package:flutter_application_1/app/modules/profile/views/profile_view.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_buat/bindings/rakit_soal_buat_binding.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_buat/views/rakit_soal_buat_view.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_isi/bindings/rakit_soal_isi_binding.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_isi/views/rakit_soal_isi_view.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_selesai/bindings/rakit_soal_selesai_binding.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_selesai/views/rakit_soal_selesai_view.dart';
import 'package:flutter_application_1/app/modules/ranking_1/bindings/ranking_1_binding.dart';
import 'package:flutter_application_1/app/modules/ranking_1/views/ranking_1_view.dart';
import 'package:flutter_application_1/app/modules/ranking_2/bindings/ranking_2_binding.dart';
import 'package:flutter_application_1/app/modules/ranking_2/views/ranking_2_view.dart';
import 'package:flutter_application_1/app/modules/register/bindings/register_binding.dart';
import 'package:flutter_application_1/app/modules/register/views/register_view.dart';
import 'package:flutter_application_1/app/modules/soal_terkait/bindings/soal_terkait_binding.dart';
import 'package:flutter_application_1/app/modules/soal_terkait/views/soal_terkait_view.dart';
import 'package:flutter_application_1/app/modules/soal_terkait_error/bindings/soal_terkait_error_binding.dart';
import 'package:flutter_application_1/app/modules/soal_terkait_error/views/soal_terkait_error_view.dart';
import 'package:flutter_application_1/app/modules/statistik_1/bindings/statistik_1_binding.dart';
import 'package:flutter_application_1/app/modules/statistik_1/views/statistik_1_view.dart';
import 'package:flutter_application_1/app/modules/statistik_2/bindings/statistik_2_binding.dart';
import 'package:flutter_application_1/app/modules/statistik_2/views/statistik_2_view.dart';
import 'package:flutter_application_1/app/modules/sunting_pengaturan/bindings/sunting_pengaturan_binding.dart';
import 'package:flutter_application_1/app/modules/sunting_pengaturan/views/sunting_pengaturan_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PAKET_SOAL,
      page: () => PaketSoalView(),
      binding: PaketSoalBinding(),
    ),
    GetPage(
      name: _Paths.BUTIR_SOAL,
      page: () => ButirSoalView(),
      binding: ButirSoalBinding(),
    ),
    GetPage(
      name: _Paths.HASIL,
      page: () => HasilView(),
      binding: HasilBinding(),
    ),
    GetPage(
      name: _Paths.NILAI,
      page: () => NilaiView(),
      binding: NilaiBinding(),
    ),
    GetPage(
      name: _Paths.PENILAIAN_AKHIR,
      page: () => PenilaianAkhirView(),
      binding: PenilaianAkhirBinding(),
    ),
    GetPage(
      name: _Paths.BUAT_SOAL_ISI,
      page: () => BuatSoalIsiView(),
      binding: BuatSoalIsiBinding(),
    ),
    GetPage(
      name: _Paths.BUAT_SOAL_BUAT,
      page: () => BuatSoalBuatView(),
      binding: BuatSoalBuatBinding(),
    ),
    GetPage(
      name: _Paths.BUAT_SOAL_SELESAI,
      page: () => BuatSoalSelesaiView(),
      binding: BuatSoalSelesaiBinding(),
    ),
    GetPage(
      name: _Paths.RAKIT_SOAL_ISI,
      page: () => RakitSoalIsiView(),
      binding: RakitSoalIsiBinding(),
    ),
    GetPage(
      name: _Paths.RAKIT_SOAL_BUAT,
      page: () => RakitSoalBuatView(),
      binding: RakitSoalBuatBinding(),
    ),
    GetPage(
      name: _Paths.SOAL_TERKAIT,
      page: () => SoalTerkaitView(),
      binding: SoalTerkaitBinding(),
    ),
    GetPage(
      name: _Paths.SOAL_TERKAIT_ERROR,
      page: () => SoalTerkaitErrorView(),
      binding: SoalTerkaitErrorBinding(),
    ),
    GetPage(
      name: _Paths.BAGIKAN,
      page: () => BagikanView(),
      binding: BagikanBinding(),
    ),
    GetPage(
      name: _Paths.PREVIEW_PAKET_SOAL,
      page: () => PreviewPaketSoalView(),
      binding: PreviewPaketSoalBinding(),
    ),
    GetPage(
      name: _Paths.PREVIEW_PAKET_SOAL_2,
      page: () => PreviewPaketSoal2View(),
      binding: PreviewPaketSoal2Binding(),
    ),
    GetPage(
      name: _Paths.PREVIEW_PAKET_SOAL_3,
      page: () => PreviewPaketSoal3View(),
      binding: PreviewPaketSoal3Binding(),
    ),
    GetPage(
      name: _Paths.RAKIT_SOAL_SELESAI,
      page: () => RakitSoalSelesaiView(),
      binding: RakitSoalSelesaiBinding(),
    ),
    GetPage(
      name: _Paths.BAGIKAN_2,
      page: () => Bagikan2View(),
      binding: Bagikan2Binding(),
    ),
    GetPage(
      name: _Paths.PROFIL_2,
      page: () => Profil2View(),
      binding: Profil2Binding(),
    ),
    GetPage(
      name: _Paths.RANKING_1,
      page: () => Ranking1View(),
      binding: Ranking1Binding(),
    ),
    GetPage(
      name: _Paths.RANKING_2,
      page: () => Ranking2View(),
      binding: Ranking2Binding(),
    ),
    GetPage(
      name: _Paths.STATISTIK_1,
      page: () => Statistik1View(),
      binding: Statistik1Binding(),
    ),
    GetPage(
      name: _Paths.STATISTIK_2,
      page: () => Statistik2View(),
      binding: Statistik2Binding(),
    ),
    GetPage(
      name: _Paths.SUNTING_PENGATURAN,
      page: () => SuntingPengaturanView(),
      binding: SuntingPengaturanBinding(),
    ),
  ];
}
