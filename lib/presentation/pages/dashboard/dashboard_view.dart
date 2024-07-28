import 'package:flutter/material.dart';
import 'package:flutter_base_app/config/util/app_theme.dart';
import 'package:flutter_base_app/data/model/artist.dart';
import 'package:flutter_base_app/data/model/song.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Artist> listArtist = dummyListArtist;
  List<Song> listTrendings = dummyListTrending;
  List<Song> listPicks = dummyListPicks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                children: [
                  Text(
                    'Made For You',
                    style: AppTheme.subtitle1(color: AppTheme.white)
                        .copyWith(fontSize: 24),
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          color: AppTheme.white,
                          size: 32,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.history,
                          color: AppTheme.white,
                          size: 32,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.settings_outlined,
                          color: AppTheme.white,
                          size: 32,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 264,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: listArtist.length,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    listArtist[index].imagePath,
                                    height: 200,
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  SizedBox(
                                      width: 200,
                                      child: Text(
                                        listArtist[index].name,
                                        style: AppTheme.body3(
                                            color: AppTheme.white),
                                      ))
                                ],
                              ));
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        'Trending Now',
                        style: AppTheme.subtitle1(color: AppTheme.white)
                            .copyWith(fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 264,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: listTrendings.length,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    listTrendings[index].imagePath,
                                    height: 200,
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  SizedBox(
                                      width: 200,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listTrendings[index].title,
                                            style: AppTheme.body3(
                                                color: AppTheme.white),
                                          ),
                                          Text(
                                            "Song · ${listTrendings[index].singer}",
                                            style: AppTheme.body3(
                                                color: AppTheme.white),
                                          ),
                                        ],
                                      ))
                                ],
                              ));
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        'Top Picks for You',
                        style: AppTheme.subtitle1(color: AppTheme.white)
                            .copyWith(fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 264,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: listPicks.length,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    listPicks[index].imagePath,
                                    height: 200,
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  SizedBox(
                                      width: 200,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listPicks[index].title,
                                            style: AppTheme.body3(
                                                color: AppTheme.white),
                                          ),
                                          Text(
                                            "Song · ${listPicks[index].singer}",
                                            style: AppTheme.body3(
                                                color: AppTheme.white),
                                          ),
                                        ],
                                      ))
                                ],
                              ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
