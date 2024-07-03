import 'package:flutter/material.dart';
import 'package:outsera_filme/pages/widgets/list_movie_winner.dart';
import 'package:outsera_filme/services/api_service.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final ApiService apiService = ApiService();

  int? year = DateTime.now().year;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Test Outsera'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _getYersMultipleWinners(),
              SizedBox(height: 20),
              _getTop3StudioWinner(),
              SizedBox(height: 20),
              _getProducersIntervalWins(),
              SizedBox(height: 20),
              _getListMovieByWinners(),
            ],
          ),
        ),
      ),
    );
  }

  _getYersMultipleWinners() {
    return Card(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('List years with multiple winners', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            FutureBuilder<List<dynamic>>(
              future: apiService.getYearsWithMultipleWinners(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  var data = snapshot.data!;

                  return DataTable(
                      columns: [
                        DataColumn(label: Text('Year')),
                        DataColumn(label: Text('Win Count')),
                      ],
                      rows: data.map((year) {
                        return DataRow(cells: [
                          DataCell(Text(year['year'].toString())),
                          DataCell(Text(year['winnerCount'].toString())),
                        ]);
                      }).toList());
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  _getTop3StudioWinner() {
    return Card(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Top 3 studios with winners', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            FutureBuilder<List<dynamic>>(
              future: apiService.getTopStudiosWithWinners(limit: 3),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return DataTable(
                      columns: [
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Win Count')),
                      ],
                      rows: snapshot.data!.map((studio) {
                        return DataRow(cells: [
                          DataCell(Text(studio['name'])),
                          DataCell(Text(studio['winCount'].toString())),
                        ]);
                      }).toList());
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  _getProducersIntervalWins() {
    return Card(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Column(
          children: [
            Text('Producers with longest and shortest interval between wins',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            FutureBuilder<Map<String, dynamic>>(
              future: apiService.getWinIntervalsForProducers(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Maximum'),
                        DataTable(
                            columns: [
                              DataColumn(label: Text('Producer')),
                              DataColumn(label: Text('Interval')),
                              DataColumn(label: Text('Previous Year')),
                              DataColumn(label: Text('Following Year')),
                            ],
                            rows: snapshot.data!['max'].map<DataRow>((producer) {
                              return DataRow(cells: [
                                DataCell(Text(producer['producer'])),
                                DataCell(Text(producer['interval'].toString())),
                                DataCell(Text(producer['previousWin'].toString())),
                                DataCell(Text(producer['followingWin'].toString())),
                              ]);
                            }).toList()),
                        Text('Minimum'),
                        DataTable(
                            columns: [
                              DataColumn(label: Text('Producer')),
                              DataColumn(label: Text('Interval')),
                              DataColumn(label: Text('Previous Year')),
                              DataColumn(label: Text('Following Year')),
                            ],
                            rows: snapshot.data!['min'].map<DataRow>((producer) {
                              return DataRow(cells: [
                                DataCell(Text(producer['producer'])),
                                DataCell(Text(producer['interval'].toString())),
                                DataCell(Text(producer['previousWin'].toString())),
                                DataCell(Text(producer['followingWin'].toString())),
                              ]);
                            }).toList()),
                      ],
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  _getListMovieByWinners() {
    return ListMovieWinner();
  }
}
