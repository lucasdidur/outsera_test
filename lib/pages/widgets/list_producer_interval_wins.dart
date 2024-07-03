import 'package:flutter/material.dart';

import '../../services/api_service.dart';

class ListProducerIntervalWins extends StatelessWidget {
  ListProducerIntervalWins({super.key});

  final ApiService apiService = ApiService();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    return Scrollbar(
                      controller: scrollController,
                      thumbVisibility: true,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Maximum'),
                            DataTable(
                                columns: [
                                  DataColumn(label: Text('Producer', style: TextStyle(fontWeight: FontWeight.bold))),
                                  DataColumn(label: Text('Interval', style: TextStyle(fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Previous Year', style: TextStyle(fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Following Year', style: TextStyle(fontWeight: FontWeight.bold))),
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
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
