import 'package:flutter/material.dart';
import 'package:outsera_filme/services/api_service.dart';
import 'package:pager/pager.dart';

import '../models/movie.dart';
import '../models/response.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final ApiService apiService = ApiService();

  int? year;
  bool? winner;
  int _currentPage = 1;
  int _currentItemsPerPage = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List movie winners by year'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Search by winner',
                            style: TextStyle(fontSize: 16),
                          ),
                          DropdownButton<bool?>(
                            value: winner,
                            items: [null, true, false].map((bool? value) {
                              var title = value.toString();
                              if (value == null) {
                                title = '';
                              } else {
                                title = value ? 'Yes' : 'No';
                              }
                              return DropdownMenuItem<bool?>(
                                value: value,
                                child: Text(title),
                              );
                            }).toList(),
                            onChanged: (bool? newValue) {
                              setState(() {
                                winner = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              FutureBuilder<Response>(
                future: apiService.getMoviesByYear(
                    year: year,
                    winner: winner,
                    page: _currentPage - 1,
                    size: _currentItemsPerPage), // Change year as needed
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData && snapshot.data!.content.isNotEmpty) {
                    var content = snapshot.data!.content.map((e) => Movie.fromJson(e)).toList();

                    return Column(
                      children: [
                        DataTable(
                            columns: [
                              DataColumn(label: Text('Id', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Year', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Title', style: TextStyle(fontWeight: FontWeight.bold))),
                              DataColumn(label: Text('Winner', style: TextStyle(fontWeight: FontWeight.bold))),
                            ],
                            rows: content.map<DataRow>((movie) {
                              return DataRow(cells: [
                                DataCell(Text(movie.id.toString())),
                                DataCell(Text(movie.year.toString())),
                                DataCell(Text(movie.title)),
                                DataCell(Text(movie.winner ? 'Yes' : 'No')),
                              ]);
                            }).toList()),
                        Pager(
                          numberButtonSelectedColor: Theme.of(context).primaryColor,
                          itemsPerPageList: [5, 10, 50, 100],
                          showItemsPerPage: true,
                          currentItemsPerPage: _currentItemsPerPage,
                          currentPage: _currentPage,
                          totalPages: snapshot.data!.totalPages,
                          onPageChanged: (page) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                          onItemsPerPageChanged: (itemsPerPage) {
                            setState(() {
                              _currentItemsPerPage = itemsPerPage;
                            });
                          },
                        ),
                      ],
                    );
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
