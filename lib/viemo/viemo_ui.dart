import 'package:briefnet/Screens/Membership/start_membership.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video {
  final String title;
  final String thumbnailUrl;
  final String videoId;

  Video({
    required this.title,
    required this.thumbnailUrl,
    required this.videoId,
  });
}

class NetflixLikeScreen extends StatefulWidget {
  const NetflixLikeScreen({Key? key}) : super(key: key);

  @override
  _NetflixLikeScreenState createState() => _NetflixLikeScreenState();
}

class _NetflixLikeScreenState extends State<NetflixLikeScreen> {
  final List<Video> _videos = [
    Video(
      title: 'Los Angeles',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1592096626141-3c7ef0472fdf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      videoId: 'https://vimeo.com/141187410',
    ),
    // Add more videos as needed
  ];

// Store the currently playing video ID
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: _videos.length,
          itemBuilder: (context, index) {
            final video = _videos[index];

            return Column(children: [
              GestureDetector(
                // onTap: () {
                //   setState(() {
                //     _currentVideoId = video.videoId;
                //   });
                // },
                child: Card(
                  color: Colors.black,
                  child: Container(
                    height: 350,
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 22),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      border:
                          Border.all(color: Colors.white), // Add border color
                      image: DecorationImage(
                        image: NetworkImage(
                            video.thumbnailUrl), // Load network image
                        fit: BoxFit
                            .cover, // Ensure the image covers the entire container
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Silicon Valley', // Example text, replace with actual information
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Drama . Tech . Startups . Entrepreneurship . Humor ', // Example text, replace with actual information
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (_, __, ___) =>
                                        const MembershipOptionsScreen(),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      var begin = const Offset(1.0, 0.0);
                                      var end = Offset.zero;
                                      var curve = Curves.ease;
                                      var tween = Tween(begin: begin, end: end)
                                          .chain(CurveTween(curve: curve));
                                      var offsetAnimation =
                                          animation.drive(tween);
                                      return SlideTransition(
                                        position: offsetAnimation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: CupertinoColors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: BorderSide(
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? CupertinoColors.white
                                        : CupertinoColors.systemYellow,
                                    width: 1.5,
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 47.0, vertical: 7.0),
                                child: Text(
                                  "Play",
                                  style: TextStyle(
                                    color: CupertinoColors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    PageRouteBuilder(
                                      pageBuilder: (_, __, ___) =>
                                          const MembershipOptionsScreen(),
                                      transitionsBuilder: (context, animation,
                                          secondaryAnimation, child) {
                                        var begin = const Offset(1.0, 0.0);
                                        var end = Offset.zero;
                                        var curve = Curves.ease;
                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation.drive(tween);
                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                    ),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      CupertinoColors.tertiaryLabel,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                      color: Theme.of(context).brightness ==
                                              Brightness.light
                                          ? CupertinoColors.darkBackgroundGray
                                          : CupertinoColors.white,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30.0, vertical: 8.0),
                                  child: Text(
                                    "➕ My List",
                                    style: TextStyle(
                                      color: CupertinoColors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]);
          }),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
