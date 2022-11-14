import 'package:dkomik/core/routes.dart';
import 'package:dkomik/presentation/bloc/main/main_page/main_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'di/injection_container.dart';
import 'utils/utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<MainPageBloc>(),
      child: MaterialApp.router(
        title: 'Komikx',
        theme: ThemeData.dark().copyWith(
          colorScheme: kColorSchemeDark,
          primaryColor: kRichBlack,
          scaffoldBackgroundColor: kRichBlack,
          textTheme: kTextTheme,
          primaryColorDark: kRichBlack,
          primaryColorLight: kwhite,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.goRouter(),

        // initialRoute: Routes.home,
        // onGenerateRoute: AppRoutes.generateRoute,
        // onGenerateInitialRoutes: (initialRouteName) {
        //   return [
        //     AppRoutes.generateRoute(
        //       const RouteSettings(
        //         name: Routes.home,
        //       ),
        //     )
        //   ];
        // },
      ),
    );
  }
}
