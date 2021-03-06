import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:toggle_switch/toggle_switch.dart';

import '../controllers/ranking_2_controller.dart';

import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class Statistik{
  Statistik(this.year, this.sales);
  final String year;
  final double sales;
}

const double width = 300.0;
const double height = 60.0;
const double loginAlign = -1;
const double signInAlign = 1;
const Color selectedColor = Colors.white;
const Color normalColor = Colors.black54;
    
class Ranking2View extends GetView<Ranking2Controller> {
  @override  
  Widget build(BuildContext context) {

    final List<Statistik> chartData = [
      Statistik('Feb, 12', 2),
      Statistik('Apr, 12', 1.5),
      Statistik('Jun, 12', 4),
      Statistik('Aug, 12', 5.5),
      Statistik('Oct, 12', 6),
      Statistik('Dec, 12', 3.5),
      Statistik('Feb, 13', 7)
    ];

    final List<Color> color = <Color>[];
        color.add(Colors.blue[200]);
        color.add(Colors.blue[400]);
        color.add(Colors.blue);

    final List<double> stops = <double>[];
        stops.add(0.0);
        stops.add(0.5);
        stops.add(1.0);

    final LinearGradient gradientColors =
            LinearGradient(colors: color, stops: stops);

    return Scaffold(
      appBar: AppBar(
        title: Text('Statistik'),
        centerTitle: false,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Statistik',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20
                )
              )
            ),
            Text(
              'Siswa Mengerkakan Soal',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: FlutterToggleTab(
                      width: 40,  
                      borderRadius: 30,  
                      height: 30,  
                      selectedBackgroundColors: [Colors.blue], 
                      unSelectedBackgroundColors: [Colors.white],
                      selectedTextStyle: TextStyle(  
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),
                      unSelectedTextStyle: TextStyle(  
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                      labels: ["Bulan", "Hari"],  
                      selectedLabelIndex: (index){},  
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.zoom_in,
                    color: Colors.grey
                  ),
                  Icon(
                    Icons.zoom_out,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.list_outlined,
                    color: Colors.grey
                  )
                ],
              )
            ),
            
            //Line Chart
            Container(
              margin: EdgeInsets.only(top: 20),
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                series: <ChartSeries>[
                  AreaSeries<Statistik, String>(
                    dataSource: chartData,
                    xValueMapper: (Statistik sales, _) => sales.year,
                    yValueMapper: (Statistik sales, _) => sales.sales,
                    gradient: gradientColors,
                    dataLabelSettings: DataLabelSettings(isVisible: true)
                  )
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}