import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdbmaze/src/feature/connectivity/export.dart';
import 'package:tmdbmaze/src/feature/movies/export.dart';

class ConnectivityStatusWidget extends StatefulWidget {
  const ConnectivityStatusWidget({required this.child, super.key});

  final Widget child;

  @override
  State<ConnectivityStatusWidget> createState() => _ConnectivityStatusWidgetState();
}

class _ConnectivityStatusWidgetState extends State<ConnectivityStatusWidget> {
  bool _wasOffline = false;
  bool _isFirstBuild = true;

  @override
  Widget build(BuildContext context) => BlocListener<ConnectivityBloc, ConnectivityState>(
    listener: (context, state) {
      // Skip showing snackbar on first build
      if (_isFirstBuild) {
        _isFirstBuild = false;
        _wasOffline = !state.isConnected;
        return;
      }

      if (state.isConnected && _wasOffline) {
        // Connection restored - reload shows
        context.read<ShowsBloc>().add(const LoadShows());
        _wasOffline = false;
      } else if (!state.isConnected) {
        _wasOffline = true;
        _showOfflineSnackBar(context);
      } else if (state.isConnected && !_wasOffline) {
        // Already online, do nothing
        _wasOffline = false;
      }
    },
    child: widget.child,
  );

  void _showOfflineSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Row(
          children: [
            Icon(Icons.wifi_off, color: Colors.white),
            SizedBox(width: 16),
            Text('No internet connection'),
          ],
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ),
    );
  }
}
