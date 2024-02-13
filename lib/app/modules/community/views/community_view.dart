import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seniorthrive/app/services/colors.dart';
import 'package:seniorthrive/app/services/responsive_size.dart';

import '../../../components/common_image_view.dart';
import '../../../constants/image_constant.dart';
import '../../../constants/seniorThriveAppBar.dart';
import '../../../services/text_style_util.dart';
import '../controllers/community_controller.dart';

class CommunityView extends GetView<CommunityController> {
  const CommunityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: seniorThriveAppBar(
        title: Text(
          'Community',
          style: TextStyleUtil.genSans600(fontSize: 18.kh),
        ),
        centerTitle: true,
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: CommonImageView(
                  svgPath: ImageConstant.svgsearch,
                ),
              ).paddingOnly(right: 16.kw),
              CircleAvatar(
                radius: 20.kw,
                child: CommonImageView(
                  svgPath: ImageConstant.svgperson,
                ),
              )
            ],
          ).paddingOnly(right: 16.kw)
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: context.orange,
                unselectedLabelColor: context.greyText,
                labelColor: context.orange,
                labelStyle: TextStyleUtil.genSans600(fontSize: 14.kh),
                labelPadding: EdgeInsets.only(bottom: 12.kh),
                tabs: [
                  Text("My Feed",
                      style: TextStyleUtil.genSansTab500(fontSize: 14.kh)),
                  Text("Explore",
                      style: TextStyleUtil.genSansTab500(fontSize: 14.kh))
                ]).paddingOnly(right: 123.kw),
            Expanded(
              child: TabBarView(children: [
                myFeed(),
                myFeed(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class myFeed extends GetView<CommunityController> {
  const myFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyleUtil.genSans500(fontSize: 14.kh),
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: context.lightgrey,
            tabAlignment: TabAlignment.start,
            dividerHeight: 20.kh,
            //padding: EdgeInsets.only(bottom: 32.kh, top: 14.kh),
            indicator: BoxDecoration(
              color: context.orange,
              borderRadius: BorderRadius.circular(56.kw),
            ),
            tabs: [
              const Tab(
                text: "All",
              ).paddingSymmetric(
                horizontal: 32.kw,
              ),
              const Tab(
                text: "Decor",
              ).paddingSymmetric(
                horizontal: 32.kw,
              ),
              const Tab(
                text: "Improvement",
              ).paddingSymmetric(
                horizontal: 32.kw,
              ),
              const Tab(
                text: "Diy",
              ).paddingSymmetric(
                horizontal: 32.kw,
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                myFeedTabContent(),
                myFeedTabContent(),
                myFeedTabContent(),
                myFeedTabContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class myFeedTabContent extends StatelessWidget {
  const myFeedTabContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24.kw,
                      child: CommonImageView(
                        svgPath: ImageConstant.svgperson,
                      ),
                    ).paddingOnly(right: 8.kw),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cameron Williamson",
                            style: TextStyleUtil.genSans500(fontSize: 16.kh)),
                        Text("13 hours ago",
                            style: TextStyleUtil.genSans400(
                                fontSize: 12.kh, color: context.greyText))
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_horiz,
                  color: context.darkgrey,
                )
              ],
            ),
            Text("✅ Lorem ipsum dolor ",
                    style: TextStyleUtil.genSans500(fontSize: 16.kh))
                .paddingOnly(top: 24.kh, bottom: 8.kh),
            Text("Lorem ipsum dolor sit amet consectetur. Euismod dignissim egestas non molestie dolor amet risus. Sed massa sit nulla neque non. Sit arcu nisl nec duis commodo sed. Gravida mauris odio amet euismod.",
                    style: TextStyleUtil.genSans400(
                        fontSize: 14.kh, color: context.darkgrey))
                .paddingOnly(bottom: 24.kh, top: 8.kh),
            SizedBox(
              height: 220.kh,
              width: 350.kw,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.kw),
                child: CommonImageView(
                  imagePath: ImageConstant.pngbedRoomCard,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("143 Likes",
                    style: TextStyleUtil.genSans500(fontSize: 14.kh)),
                Text("13 Comments",
                    style: TextStyleUtil.genSans500(fontSize: 14.kh))
              ],
            ).paddingOnly(bottom: 13.kh, top: 24.kh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.suit_heart,
                        color: context.darkgrey,
                        size: 24.kh,
                      ).paddingOnly(right: 8.kw),
                      Text("Like",
                          style: TextStyleUtil.genSans500(
                            fontSize: 14.kh,
                            color: context.darkgrey,
                          ))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      commentsBottomSheet(),
                    );
                  },
                  child: Row(
                    children: [
                      CommonImageView(
                        svgPath: ImageConstant.svgcomments,
                        svgColor: context.darkgrey,
                        height: 24.kh,
                        width: 24.kw,
                      ).paddingOnly(right: 8.kw),
                      Text("Comment",
                          style: TextStyleUtil.genSans500(
                            fontSize: 14.kh,
                            color: context.darkgrey,
                          ))
                    ],
                  ),
                )
              ],
            ).paddingOnly(bottom: 12.kh),
          ],
        ).paddingOnly(left: 16.kw, right: 16.kw);
      },
    ).paddingOnly(top: 20.kh);
  }
}

class commentsBottomSheet extends StatelessWidget {
  const commentsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
        color: Colors.white, // Adjust the color as needed
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Comments (13)",
                        style: TextStyleUtil.genSans600(fontSize: 16.kh))
                    .paddingOnly(top: 24.kh, bottom: 16.kh),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(CupertinoIcons.xmark))
              ],
            ).paddingOnly(left: 16.kw, right: 16.kw),
            ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16.kw,
                          child: CommonImageView(
                            svgPath: ImageConstant.svgperson,
                          ),
                        ),
                        Text("Courtney Henry",
                                style:
                                    TextStyleUtil.genSans500(fontSize: 14.kh))
                            .paddingOnly(left: 8.kw, right: 8.kw),
                        Text("•",
                                style:
                                    TextStyleUtil.genSans400(fontSize: 12.kh))
                            .paddingOnly(right: 8.kw),
                        Text("3 days ago",
                            style: TextStyleUtil.genSans400(fontSize: 12.kh))
                      ],
                    ),
                    Text("Lorem ipsum dolor sit amet consectetur. Etiam pellentesque ultrices vivamus a suspendisse erat ipsum. Sagittis in diam eu adipiscing lacinia pretium. Eget aliquam nisl scelerisque tellus enim.",
                            style: TextStyleUtil.genSans400(
                                fontSize: 14.kh, color: context.darkgrey))
                        .paddingOnly(top: 7.kh, bottom: 16.kh),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: context.lightgrey,
                              borderRadius: BorderRadius.circular(21.kw)),
                          child: Text("Reply",
                                  style:
                                      TextStyleUtil.genSans500(fontSize: 14.kh))
                              .paddingOnly(
                                  left: 24.kh,
                                  right: 24.kh,
                                  top: 6.kh,
                                  bottom: 6.kh),
                        ).paddingOnly(right: 24.kw),
                        Icon(
                          Icons.more_horiz,
                          color: context.darkgrey,
                        )
                      ],
                    ).paddingOnly(bottom: 24.kh),
                    ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 16.kw,
                                    child: CommonImageView(
                                      svgPath: ImageConstant.svgperson,
                                    ),
                                  ),
                                  Text("Courtney Henry",
                                          style: TextStyleUtil.genSans500(
                                              fontSize: 14.kh))
                                      .paddingOnly(right: 8.kw, left: 8.kw),
                                  Text("•",
                                      style: TextStyleUtil.genSans400(
                                          fontSize: 12.kh)),
                                  Text("3 days ago",
                                          style: TextStyleUtil.genSans400(
                                              fontSize: 12.kh))
                                      .paddingOnly(left: 8.kw)
                                ],
                              ),
                              Text("Lorem ipsum dolor sit amet consectetur. Ipsum vitae amet ipsum ",
                                      style: TextStyleUtil.genSans400(
                                          fontSize: 14.kh,
                                          color: context.darkgrey))
                                  .paddingOnly(right: 8.kw, top: 11.kh),
                              Icon(
                                Icons.more_horiz,
                                color: context.darkgrey,
                              ).paddingOnly(top: 16.kh, bottom: 24.kh),
                            ],
                          ).paddingOnly(left: 40.kw);
                        })
                  ],
                ).paddingOnly(left: 16.kw, right: 16.kw);
              },
            ),
          ],
        ),
      ).paddingOnly(top: 0.kh),
    );
  }
}
