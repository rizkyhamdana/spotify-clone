import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_base_app/config/services/injection.dart';
import 'package:flutter_base_app/config/util/app_theme.dart';
import 'package:flutter_base_app/presentation/pages/dashboard/dashboard_view.dart';
import 'package:flutter_base_app/presentation/pages/movie/movie_cubit.dart';
import 'package:flutter_base_app/presentation/pages/movie/movie_view.dart';
import 'package:flutter_base_app/presentation/pages/tv_show/tv_show_cubit.dart';
import 'package:flutter_base_app/presentation/pages/tv_show/tv_show_view.dart';
import 'package:flutter_base_app/presentation/pages/watchlist/watchlist_cubit.dart';
import 'package:flutter_base_app/presentation/pages/watchlist/watchlist_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController(initialPage: 0);
  final _controller = NotchBottomBarController(index: 0);

  var cubit = getIt<MovieCubit>();

  final List<Widget> bottomBarPages = [
    const DashboardPage(),
    const TvShowPage(),
    const WatchlistPage(),
  ];

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  @override

  /// Builds the home page of the application, which includes a bottom navigation bar with three pages:
  /// - Movie page
  /// - TV Show page
  /// - Watchlist page
  ///
  /// The home page uses the `MultiBlocProvider` widget to provide the necessary Bloc instances for each page.
  /// It also includes a `WillPopScope` widget that displays a confirmation dialog when the user tries to close the app.
  /// The home page uses the `AnimatedNotchBottomBar` widget to display the bottom navigation bar with custom icons and labels.
  /// The `PageView` widget is used to display the content of the selected page.
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MovieCubit>(),
          child: const MoviePage(),
        ),
        BlocProvider(
          create: (context) => getIt<TvShowCubit>(),
          child: const TvShowPage(),
        ),
        BlocProvider(
          create: (context) => getIt<WatchListCubit>(),
          child: const TvShowPage(),
        ),
      ],
      child: PopScope(
        onPopInvoked: (didPop) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.noHeader,
            animType: AnimType.rightSlide,
            dialogBackgroundColor: AppTheme.bgColor,
            titleTextStyle: AppTheme.subtitle2(color: AppTheme.white),
            descTextStyle: AppTheme.body3(color: AppTheme.white),
            btnOkColor: AppTheme.blue1,
            buttonsTextStyle: AppTheme.subtitle3(color: AppTheme.white),
            title: 'Close App?',
            desc: 'Are you sure want to close this app?',
            btnCancelText: 'No',
            btnCancelOnPress: () {},
            btnOkText: 'Yes',
            btnOkOnPress: () {
              SystemNavigator.pop();
            },
          ).show();
          // Return 'false' to disable the back button press
        },
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.grey,
            body: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                  bottomBarPages.length, (index) => bottomBarPages[index]),
            ),
            extendBody: true,
            bottomNavigationBar: AnimatedNotchBottomBar(
              kIconSize: 32,
              notchBottomBarController: _controller,
              color: AppTheme.bgColor2,
              notchColor: AppTheme.bgColor2,
              showLabel: false,
              showShadow: false,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.movie_creation_outlined,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.movie_creation_outlined,
                    color: AppTheme.blue1,
                  ),
                  itemLabel: 'Movie',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.live_tv,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.live_tv,
                    color: AppTheme.blue1,
                  ),
                  itemLabel: 'TV Show',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.bookmark_border_rounded,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.bookmark_border_rounded,
                    color: AppTheme.blue1,
                  ),
                  itemLabel: 'Watch List',
                ),
              ],
              onTap: (int index) {
                _pageController.addListener(() {});
                _pageController.jumpToPage(index);
              },
              kBottomRadius: 8,
            )),
      ),
    );
  }
}
