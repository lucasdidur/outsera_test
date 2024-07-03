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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                future: apiService.getMovies(year: year, winner: true, size: 3), // Change year as needed
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData && snapshot.data!.content.isNotEmpty) {
                    var content = snapshot.data!.content.map((e) => Movie.fromJson(e)).toList();

                    return DataTable(
                        columns: [
                          DataColumn(label: Text('Id', style: TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(label: Text('Year', style: TextStyle(fontWeight: FontWeight.bold))),
                          DataColumn(label: Text('Title', style: TextStyle(fontWeight: FontWeight.bold))),
                        ],
                        rows: content.map<DataRow>((movie) {
                          return DataRow(cells: [
                            DataCell(Text(movie.id.toString())),
                            DataCell(Text(movie.year.toString())),
                            DataCell(Text(movie.title)),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
