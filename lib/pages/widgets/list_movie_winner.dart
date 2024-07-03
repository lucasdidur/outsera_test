import 'package:flutter/material.dart';

import '../../models/movie.dart';
import '../../models/response.dart';
import '../../services/api_service.dart';

class ListMovieWinner extends StatefulWidget {
  const ListMovieWinner({super.key});

  @override
  State<ListMovieWinner> createState() => _ListMovieWinnerState();
}

class _ListMovieWinnerState extends State<ListMovieWinner> {
  final ApiService apiService = ApiService();

  int? year;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('List movie winners by year', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            TextField(
              decoration: InputDecoration(
                labelText: 'Search by year',
                suffixIcon: Icon(Icons.search),
              ),
              keyboardType: TextInputType.number,
              onSubmitted: (value) {
                setState(() {
                  year = int.tryParse(value);
                });
              },
            ),
            FutureBuilder<Response>(
              future: apiService.getMoviesByYear(year: year, winner: true), // Change year as needed
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  var content = snapshot.data!.content.map((e) => Movie.fromJson(e)).toList();

                  return DataTable(
                      columns: [
                        DataColumn(label: Text('Id')),
                        DataColumn(label: Text('Year')),
                        DataColumn(label: Text('Title')),
                      ],
                      rows: content.map<DataRow>((movie) {
                        return DataRow(cells: [
                          DataCell(Text(movie.id.toString())),
                          DataCell(Text(movie.year.toString())),
                          DataCell(Text(movie.title)),
                        ]);
                      }).toList());
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
