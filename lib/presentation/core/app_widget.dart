import 'package:agromall_test/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../router/app_router.dart';
import 'app_colors.dart';
import 'theme.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.

  final _appRouter = getIt<AppRouter>();
  final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      getIt<GlobalKey<ScaffoldMessengerState>>();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      child: Consumer<AppTheme>(builder: (context, appTheme, child) {
        return MaterialApp.router(
          scaffoldMessengerKey: rootScaffoldMessengerKey,
          // key: getIt<DialogService>().dialogNavigatorKey,
          title: 'AgroMall',
          theme: AppTheme.lightTheme,
          themeMode: appTheme.themeMode,
          darkTheme: AppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
        );
      }),
    );

    //   return MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(

    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       useMaterial3: true,
    //     ),
    //     // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    //   );
  }
}
