import 'package:flutter/material.dart';

import '../../services/api_service.dart';

class ListTopTreeStudiosWithWinner extends StatelessWidget {
  ListTopTreeStudiosWithWinner({super.key});

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
              Text('Top 3 studios with winners', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              FutureBuilder<List<dynamic>>(
                future: apiService.getTopStudiosWithWinners(limit: 3),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    return DataTable(
                        columns: [
                          DataColumn(label: Text('Name', style: TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(label: Text('Win Count', style: TextStyle(fontWeight: FontWeight.bold))),
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
      ),
    );
  }
}
