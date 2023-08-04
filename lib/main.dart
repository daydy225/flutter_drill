import 'package:flutter/material.dart';
import 'package:flutter_drill/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // FlutterError.onError = (FlutterErrorDetails details) {
  //   FlutterError.dumpErrorToConsole(details);
  //   runApp(ErrorWidgetClass(details));
  // };
  runApp(
    const ProviderScope(child: MainApp()),
  );
}

// class ErrorWidgetClass extends StatelessWidget {
//   final FlutterErrorDetails errorDetails;
//   const ErrorWidgetClass(this.errorDetails, {super.key});
//   @override
//   Widget build(BuildContext context) {
//     return CustomErrorWidget(
//       errorMessage: errorDetails.exceptionAsString(),
//     );
//   }
// }

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
