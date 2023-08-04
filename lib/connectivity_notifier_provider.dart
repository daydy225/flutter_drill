import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ConnectivityStatus { notDetermined, isConnected, isDisConnected }

final connectivityStatusProviders = StateNotifierProvider((ref) {
  return ConnectivityStatusNotifier();
});

class ConnectivityStatusNotifier extends StateNotifier<ConnectivityStatus> {
  ConnectivityStatus? lastResult;
  ConnectivityStatus? newState;

  ConnectivityStatusNotifier() : super(ConnectivityStatus.isConnected) {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        newState = ConnectivityStatus.isDisConnected;
      } else if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        newState = ConnectivityStatus.isConnected;
      } else {
        newState = ConnectivityStatus.notDetermined;
      }

      if (lastResult != newState) {
        lastResult = newState;
        state = newState!;
      }
    });
  }
}
