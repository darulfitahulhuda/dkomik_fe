import 'package:dkomik/presentation/bloc/detail_komik/detail_komik_tabbar/detail_komik_tabbar_bloc.dart';
import 'package:dkomik/presentation/page/main/main_page.dart';
import 'package:dkomik/presentation/page/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../presentation/page/detail_komik/detail_komik_page.dart';
import '../presentation/page/home/home_page.dart';
import 'di/injection_container.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class Routes {
  static const String home = "/home";
  static const String detailKomik = "/detail-komik";
}

class AppRoutes {
  static const komikId = 'komikId';
  static const home = '/home';
  static const search = '/search';

  static const ValueKey<String> _scaffoldKey = ValueKey<String>('App scaffold');

  static RouterConfig<Object> goRouter() {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: home,
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          redirect: (_, __) => home,
        ),

        /// HOME -> DETAIL KOMIK
        GoRoute(
          path: '$home/:$komikId',
          redirect: (BuildContext context, GoRouterState state) {
            return '/home/${state.params[komikId]}';
          },
        ),
        // Home
        GoRoute(
          path: home,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              FadeTransitionPage(
                  child: const MainPage(child: HomePage()), key: _scaffoldKey),
          routes: [
            // Detail
            GoRoute(
              path: ':$komikId',
              builder: (BuildContext context, GoRouterState state) {
                final detailArg = state.params[komikId]!;

                return BlocProvider(
                  create: (context) => di<DetailKomikTabbarBloc>(),
                  child: DetailKomikPage(
                    image: detailArg,
                  ),
                );
              },
            ),
          ],
        ),

        /// Search
        GoRoute(
          path: search,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              FadeTransitionPage(
                  child: const MainPage(child: SearchPage()),
                  key: _scaffoldKey),
        ),

        /// Donwload
        /// Profile
      ],
    );
  }

// static Route<dynamic> generateRoute(RouteSettings settings) {
//     final args = settings.arguments;

//     switch (settings.name) {
//       case Routes.home:
//         return MaterialPageRoute(
//           settings: RouteSettings(name: Routes.home, arguments: args),
//           builder: (_) => const HomePage(),
//         );
//       case Routes.detailKomik:
//         return MaterialPageRoute(
//             settings: RouteSettings(name: Routes.detailKomik, arguments: args),
//             builder: (_) {
//               final detailArg = settings.arguments as String;
//               return BlocProvider(
//                 create: (context) => di<DetailKomikTabbarBloc>(),
//                 child: DetailKomikPage(
//                   image: detailArg,
//                 ),
//               );
//             });
//       default:
//         return MaterialPageRoute(
//           settings: RouteSettings(name: Routes.home, arguments: args),
//           builder: (_) => const HomePage(),
//         );
//     }

//   }
}

/// A page that fades in an out.
class FadeTransitionPage extends CustomTransitionPage<void> {
  /// Creates a [FadeTransitionPage].
  FadeTransitionPage({
    required LocalKey key,
    required Widget child,
  }) : super(
            key: key,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(
                  opacity: animation.drive(_curveTween),
                  child: child,
                ),
            child: child);

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
