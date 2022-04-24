import 'package:dark_instagram_clone/data/stories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool? isPostLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _customAppbar(),
                _storiesSection(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/post_creator1.png',
                        height: 32,
                        width: 32,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('joshua_i',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'Tokyo, Japan',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/three_dot.png',
                        width: 15,
                        height: 5,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      (isPostLiked == false)
                          ? isPostLiked = true
                          : isPostLiked = false;
                    });
                  },
                  child: Image.asset('assets/images/post_image1.png',
                      width: double.infinity, height: 375),
                ),
                const SizedBox(
                  height: 10,
                ),
                _postActions(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/liked_by_photo1.png',
                        width: 17,
                        height: 17,
                      ),
                      const SizedBox(
                        width: 6.5,
                      ),
                      RichText(
                        text: const TextSpan(
                            text: 'Liked by',
                            style: TextStyle(color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' daffraz',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: '2.000 others',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: const [
                      Text(
                        'joshua_i',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text("This view is awesome, i liked it!",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'View all 4.000 comments',
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
          ),
        ));
  }

  Padding _postActions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                (isPostLiked == false)
                    ? isPostLiked = true
                    : isPostLiked = false;
              });
            },
            child: Icon(
              (isPostLiked == false) ? Icons.favorite_border : Icons.favorite,
              color: Colors.white,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 17,
          ),
          Image.asset(
            'assets/images/Comment.png',
            height: 20,
            width: 23,
          ),
          const SizedBox(
            width: 17,
          ),
          Image.asset(
            'assets/images/Messanger.png',
            height: 20,
            width: 23,
          ),
          const Spacer(),
          Image.asset(
            'assets/images/Save.png',
            height: 24,
            width: 21,
          ),
        ],
      ),
    );
  }

  Padding _storiesSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: 100,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                Stories.igStoryImages[index],
                height: 62,
                width: 62,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
            itemCount: Stories.igStoryImages.length),
      ),
    );
  }

  Padding _customAppbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Container(
        child: Row(children: [
          Image.asset(
            'assets/images/Camera.png',
            height: 22,
            width: 23.5,
          ),
          const Spacer(
            flex: 2,
          ),
          Image.asset(
            'assets/images/Instagram_logo.png',
            height: 28,
            width: 105,
          ),
          const Spacer(),
          Image.asset(
            'assets/images/IGTV.png',
            height: 24,
            width: 25,
          ),
          const SizedBox(
            width: 18,
          ),
          Image.asset(
            'assets/images/Messanger.png',
            height: 20,
            width: 23,
          ),
        ]),
      ),
    );
  }
}
