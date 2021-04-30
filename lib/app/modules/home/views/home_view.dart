import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/bagikan/views/bagikan_view.dart';
import 'package:flutter_application_1/app/modules/bagikan_2/views/bagikan_2_view.dart';
import 'package:flutter_application_1/app/modules/buat_soal_buat/views/buat_soal_buat_view.dart';
import 'package:flutter_application_1/app/modules/buat_soal_isi/views/buat_soal_isi_view.dart';
import 'package:flutter_application_1/app/modules/buat_soal_selesai/views/buat_soal_selesai_view.dart';
import 'package:flutter_application_1/app/modules/butir_soal/views/butir_soal_view.dart';
import 'package:flutter_application_1/app/modules/dashboard/views/dashboard_view.dart';
import 'package:flutter_application_1/app/modules/hasil/views/hasil_view.dart';
import 'package:flutter_application_1/app/modules/login/views/login_view.dart';
import 'package:flutter_application_1/app/modules/nilai/views/nilai_view.dart';
import 'package:flutter_application_1/app/modules/paket_soal/views/paket_soal_view.dart';
import 'package:flutter_application_1/app/modules/penilaian_akhir/views/penilaian_akhir_view.dart';
import 'package:flutter_application_1/app/modules/preview_paket_soal/views/preview_paket_soal_view.dart';
import 'package:flutter_application_1/app/modules/preview_paket_soal_2/views/preview_paket_soal_2_view.dart';
import 'package:flutter_application_1/app/modules/preview_paket_soal_3/views/preview_paket_soal_3_view.dart';
import 'package:flutter_application_1/app/modules/profil_2/views/profil_2_view.dart';
import 'package:flutter_application_1/app/modules/profile/views/profile_view.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_buat/views/rakit_soal_buat_view.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_isi/views/rakit_soal_isi_view.dart';
import 'package:flutter_application_1/app/modules/rakit_soal_selesai/views/rakit_soal_selesai_view.dart';
import 'package:flutter_application_1/app/modules/ranking_1/views/ranking_1_view.dart';
import 'package:flutter_application_1/app/modules/ranking_2/views/ranking_2_view.dart';
import 'package:flutter_application_1/app/modules/register/views/register_view.dart';
import 'package:flutter_application_1/app/modules/soal_terkait/views/soal_terkait_view.dart';
import 'package:flutter_application_1/app/modules/soal_terkait_error/views/soal_terkait_error_view.dart';
import 'package:flutter_application_1/app/modules/statistik_1/views/statistik_1_view.dart';
import 'package:flutter_application_1/app/modules/statistik_2/views/statistik_2_view.dart';
import 'package:flutter_application_1/app/modules/sunting_pengaturan/views/sunting_pengaturan_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: ListView(
          children: [
          RaisedButton(
            onPressed: () => Get.to(() => LoginView()),
            child: Text('Ke Halaman Login ==> "Selesai"'),
          ),
          RaisedButton(
            onPressed: () => Get.to(() => RegisterView()),
            child: Text('Ke Halaman Register ==> "Selesai"'),
          ),
          RaisedButton(
            onPressed: () => Get.to(() => DashboardView()),
            child: Text('Ke Halaman Dashboard'),
          ),
          RaisedButton(onPressed: ()=>Get.to(ProfileView()),
          child: Text('Ke Halaman Profile'),
          ),
          RaisedButton(onPressed: ()=>Get.to(PaketSoalView()),
          child: Text('Ke Halaman Paket Soal'),
          ),
          RaisedButton(onPressed: ()=>Get.to(ButirSoalView()),
          child: Text('Ke Halaman Butir Soal'),
          ),
          RaisedButton(onPressed: ()=>Get.to(HasilView()),
          child: Text('Ke Halaman Hasil ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(NilaiView()),
          child: Text('Ke Halaman Nilai ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(PenilaianAkhirView()),
          child: Text('Ke Halaman Penilaian Akhir'),
          ),
          RaisedButton(onPressed: ()=>Get.to(BuatSoalIsiView()),
          child: Text('Ke Halaman Buat Soal (Isi) ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(BuatSoalBuatView()),
          child: Text('Ke Halaman Buat Soal (Buat)'),
          ),
          RaisedButton(onPressed: ()=>Get.to(BuatSoalSelesaiView()),
          child: Text('Ke Halaman Buat Soal (Selesai) ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(RakitSoalIsiView()),
          child: Text('Ke Halaman Rakit Soal (Isi) ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(RakitSoalBuatView()),
          child: Text('Ke Halaman Rakit Soal (Buat) ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(SoalTerkaitView()),
          child: Text('Ke Halaman Soal Terkait'),
          ),
          RaisedButton(onPressed: ()=>Get.to(SoalTerkaitErrorView()),
          child: Text('Ke Halaman Soal Terkait (Error)'),
          ),
          RaisedButton(onPressed: ()=>Get.to(BagikanView()),
          child: Text('Ke Halaman Bagikan'),
          ),
          RaisedButton(onPressed: ()=>Get.to(PreviewPaketSoalView()),
          child: Text('Ke Halaman Preview Paket Soal 1 ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(PreviewPaketSoal2View()),
          child: Text('Ke Halaman Preview Paket Soal 2 ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(PreviewPaketSoal3View()),
          child: Text('Ke Halaman Preview Paket Soal 3 ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(RakitSoalSelesaiView()),
          child: Text('Ke Halaman Rakit Soal (Selesai) ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(Bagikan2View()),
          child: Text('Ke Halaman Bagikan 2 ==> "Selesai"'),
          ),
          RaisedButton(onPressed: ()=>Get.to(Profil2View()),
          child: Text('Ke Halaman Profil 2'),
          ),
          RaisedButton(onPressed: ()=>Get.to(Ranking1View()),
          child: Text('Ke Halaman Ranking 1'),
          ),
          RaisedButton(onPressed: ()=>Get.to(Ranking2View()),
          child: Text('Ke Halaman Statistik'),
          ),
          RaisedButton(onPressed: ()=>Get.to(Statistik1View()),
          child: Text('Ke Halaman Statistik Dan Ranking 1'),
          ),
          RaisedButton(onPressed: ()=>Get.to(Statistik2View()),
          child: Text('Ke Halaman Statistik Dan Ranking 2'),
          ),
          RaisedButton(onPressed: ()=>Get.to(SuntingPengaturanView()),
          child: Text('Ke Halaman Sunting Pengaturan Soal'),
          ),
        ],
      )),
    );
  }
}
