import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool? animate;

  const SimpleBarChart(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory SimpleBarChart.withSampleData() {
    return SimpleBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<WeekReminders, String>> _createSampleData() {
    final data = [
      WeekReminders('2014', 5),
      WeekReminders('2015', 25),
      WeekReminders('2016', 100),
      WeekReminders('2017', 75),
    ];

    return [
      charts.Series<WeekReminders, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (WeekReminders week, _) => week.days,
        measureFn: (WeekReminders week, _) => week.tasks,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

class WeekReminders {
  final String days;
  final int tasks;

  WeekReminders(this.days, this.tasks);
}
