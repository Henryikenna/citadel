import 'package:citadel/screens/create_community_screen.dart';
import 'package:citadel/utils/colors.dart';
import 'package:citadel/utils/font.dart';
import 'package:citadel/widgets/add_status_widget.dart';
import 'package:citadel/widgets/community_screen_appbar.dart';
import 'package:citadel/widgets/community_screen_message_card.dart';
import 'package:citadel/widgets/status_widget.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  TabController? tabController;

  String theIconName = "communitySearch";

  Function() onPressed = () {
    print("clicked 1");
  };

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);

    tabController?.addListener(() {
      print("index is ${tabController!.index}");

      if (tabController!.index == 0) {
        setState(() {
          theIconName = "communitySearch";
          onPressed = () {
            print("clicked 1");
          };
        });
      } else if (tabController!.index == 1) {
        setState(() {
          theIconName = "communityAdd";
          onPressed = () {
            print("clicked 2");
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CreateCommunityScreen();
            }));
          };
        });
      }
    });
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Appcolors.bgBlack,
        appBar: CommunityScreenAppBar(
          iconName: theIconName,
          controller: tabController!,
          onPressed: onPressed,
        ),
        body: TabBarView(
          controller: tabController,
          // physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            ListView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                  ),
                  child: Row(
                    children: [
                      addStatusWidget(),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/pattern.jpg",
                        ),
                        userName: "Graceland Ministries",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/mockimg.jpg",
                        ),
                        userName: "Salvation Ministries",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/mockpfp.jpg",
                        ),
                        userName: "Michelle",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/headphones.png",
                        ),
                        userName: "Nnamdi",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/speaker.png",
                        ),
                        userName: "Victor Von Doom",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/pattern.jpg",
                        ),
                        userName: "Vin",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/pattern.jpg",
                        ),
                        userName: "Grace",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 27,
                ),
                const Text(
                  "Communities you joined",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFb0b0b0),
                    fontFamily: readexproFontName,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                // SizedBox(
                //   height: 500,
                //   child: ListView.builder(
                //     itemCount: 12,
                //     physics: const NeverScrollableScrollPhysics(),
                //     itemBuilder: (context, index) {
                //       return messageCard(
                //         profilePicture:
                //             const AssetImage("assets/images/mockpfp.jpg"),
                //         chatTitle: "Salvation Ministry Music Crew",
                //         messagePreview:
                //             "Gabrile: we won,t make it for the session",
                //         noOfMessages: index,
                //         isNoOfMessagesVisible: true,
                //         context: context,
                //       );
                //     },
                //   ),
                // ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 0,
                  isNoOfMessagesVisible: false,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 5,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
              ],
            ),
            ListView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                  ),
                  child: Row(
                    children: [
                      addStatusWidget(),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/pattern.jpg",
                        ),
                        userName: "Graceland Ministries",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/mockimg.jpg",
                        ),
                        userName: "Salvation Ministries",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/mockpfp.jpg",
                        ),
                        userName: "Michelle",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/headphones.png",
                        ),
                        userName: "Nnamdi",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/speaker.png",
                        ),
                        userName: "Victor Von Doom",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/pattern.jpg",
                        ),
                        userName: "Vin",
                      ),
                      statusWidget(
                        profilePicture: const AssetImage(
                          "assets/images/pattern.jpg",
                        ),
                        userName: "Grace",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 27,
                ),
                const Text(
                  "Communities you created",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFb0b0b0),
                    fontFamily: readexproFontName,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                // SizedBox(
                //   height: 500,
                //   child: ListView.builder(
                //     itemCount: 12,
                //     physics: const NeverScrollableScrollPhysics(),
                //     itemBuilder: (context, index) {
                //       return messageCard(
                //         profilePicture:
                //             const AssetImage("assets/images/mockpfp.jpg"),
                //         chatTitle: "Salvation Ministry Music Crew",
                //         messagePreview:
                //             "Gabrile: we won,t make it for the session",
                //         noOfMessages: index,
                //         isNoOfMessagesVisible: true,
                //         context: context,
                //       );
                //     },
                //   ),
                // ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 0,
                  isNoOfMessagesVisible: false,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 5,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
                messageCard(
                  profilePicture: const AssetImage("assets/images/mockpfp.jpg"),
                  chatTitle: "Salvation Ministry Music Crew",
                  messagePreview: "Gabrile: we won,t make it for the session",
                  noOfMessages: 15,
                  isNoOfMessagesVisible: true,
                  context: context,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
