import 'package:go_router/go_router.dart';

import 'package:film_gallery/features/favorite_films/favorite_films.dart';
import 'package:film_gallery/features/popular_films/popular_films.dart';
import 'package:film_gallery/features/project_settings/project_settings.dart';
import 'package:film_gallery/features/search_films/search_films.dart';
import 'package:film_gallery/uikit/scaffold_with_nav/scaffold_with_nav.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/popular',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNav(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/popular',
              builder: (context, state) => const PopularFilmsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favorite',
              builder: (context, state) => const FavoriteFilmsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/search',
              builder: (context, state) => const SearchFilmsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => const GlobalSettingsScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);