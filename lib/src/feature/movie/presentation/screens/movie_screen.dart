import 'package:flutter/material.dart';
import 'package:tmdbmaze/src/feature/movie/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart' show Show;

class MovieScreen extends StatefulWidget {
  const MovieScreen({required this.show, super.key});

  final Show show;

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Scrollbar(
      controller: _scrollController,
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          ShowDetailAppBar(widget.show, scrollController: _scrollController),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ShowDetailRating(widget.show),
                ShowDetailSchedule(widget.show),
                ShowDetailAirtime(widget.show),
                ShowDetailLinks(widget.show),
                ShowDetailSummary(widget.show),
                ShowDetailGrid(widget.show),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
