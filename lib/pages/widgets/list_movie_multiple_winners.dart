import 'package:flutter/material.dart';
import 'package:outsera_filme/models/response_year_multiple_wins.dart';

import '../../services/api_service.dart';

class ListMovieMultipleWinners extends StatelessWidget {
  ListMovieMultipleWinners({super.key});

  final ApiService apiService = ApiService();

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('List years with multiple winners', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              FutureBuilder<List<Year>>(
                future: apiService.getYearsWithMultipleWinners(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData) {
                    var data = snapshot.data!;

                    return DataTable(
                        columns: [
                          DataColumn(label: Text('Year', style: TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(label: Text('Win Count', style: TextStyle(fontWeight: FontWeight.bold))),
                        ],
                        rows: data.map((year) {
                          return DataRow(cells: [
                            DataCell(Text(year.year.toString())),
                            DataCell(Text(year.winnerCount.toString())),
                          ]);
                        }).toList());
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('No movie found'),
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
