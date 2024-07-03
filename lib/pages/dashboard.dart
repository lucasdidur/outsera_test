import 'package:flutter/material.dart';
import 'package:outsera_filme/pages/widgets/list_movie_multiple_winners.dart';
import 'package:outsera_filme/pages/widgets/list_movie_winner.dart';
import 'package:outsera_filme/pages/widgets/list_producer_interval_wins.dart';
import 'package:outsera_filme/pages/widgets/list_top_tree_studios_with_winner.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
              ListMovieMultipleWinners(),
              SizedBox(height: 20),
              ListTopTreeStudiosWithWinner(),
              SizedBox(height: 20),
              ListProducerIntervalWins(),
              SizedBox(height: 20),
              ListMovieWinner(),
            ],
          ),
        ),
      ),
    );
  }
}
