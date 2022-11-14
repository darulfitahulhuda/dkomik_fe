import 'package:dkomik/core/utils/image_utils.dart';
import 'package:dkomik/core/utils/utils.dart';
import 'package:dkomik/presentation/bloc/detail_komik/detail_komik_tabbar/detail_komik_tabbar_bloc.dart';
import 'package:dkomik/presentation/page/detail_komik/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailKomikPage extends StatelessWidget {
  final String image;
  const DetailKomikPage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kRichBlack,
      body: Stack(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                // height: 250,
                height: height * .35,
                margin: const EdgeInsets.only(bottom: 55),
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageUtils.imgDemon1),
                )),
              ),
              Hero(
                tag: image,
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width / 3.5,
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kRichBlack,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      ImageUtils.imgDemon1,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: .55,
              maxChildSize: 1,
              minChildSize: .55,
              expand: true,
              builder: (context, scrollController) {
                return ListView(
                  controller: scrollController,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                          color: kRichBlack,
                          borderRadius: BorderRadius.vertical(top: kRadius24)),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: BlocBuilder<DetailKomikTabbarBloc,
                                DetailKomikTabbarState>(
                              builder: (context, state) {
                                if (state is DetailKomikTabbarChatper) {
                                  return ListView.separated(
                                    shrinkWrap: true,
                                    itemCount: 20,
                                    padding: const EdgeInsets.fromLTRB(
                                        kDefaultMargin, 10, kDefaultMargin, 10),
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    separatorBuilder: (context, index) {
                                      return const Divider(
                                        color: kGrey,
                                        thickness: 2,
                                      );
                                    },
                                    itemBuilder: (context, index) {
                                      return const DetailKomikChapter();
                                    },
                                  );
                                }
                                return const DetailKomikTab();
                              },
                            ),
                          ),
                          SafeArea(
                            child: Container(
                              color: kRichBlack,
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "Demon Slayer",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const DetailKomikTitleTab(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
