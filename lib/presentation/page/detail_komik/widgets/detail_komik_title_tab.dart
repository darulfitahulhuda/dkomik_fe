part of 'widgets.dart';

class DetailKomikTitleTab extends StatelessWidget {
  const DetailKomikTitleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailKomikTabbarBloc, DetailKomikTabbarState>(
      builder: (context, state) {
        return Row(
          children: [
            InkWell(
              onTap: () => context
                  .read<DetailKomikTabbarBloc>()
                  .add(DetailKomikTabbar()),
              child: Container(
                padding: const EdgeInsets.only(top: 3),
                width: MediaQuery.of(context).size.width / 2,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Detail",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: state is DetailKomikTabbarInitial
                              ? Theme.of(context).colorScheme.onSecondary
                              : kDavysGrey),
                      // style: kSubtitle.copyWith(
                      // fontWeight: FontWeight.normal, color: kwhite),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: state is DetailKomikTabbarInitial ? 24 : 0),
                      child: Divider(
                        color: state is DetailKomikTabbarInitial
                            ? Theme.of(context).colorScheme.onSecondary
                            : kTransparent,
                        thickness: 2,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => context
                  .read<DetailKomikTabbarBloc>()
                  .add(ChapterKomikTabbar()),
              child: Container(
                padding: const EdgeInsets.only(top: 3),
                width: MediaQuery.of(context).size.width / 2,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Chapter",
                      style: kSubtitleDark.copyWith(
                        fontWeight: FontWeight.normal,
                        color: state is DetailKomikTabbarChatper
                            ? Theme.of(context).colorScheme.onSecondary
                            : kDavysGrey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: state is DetailKomikTabbarChatper ? 24 : 0),
                      child: Divider(
                        color: state is DetailKomikTabbarChatper
                            ? Theme.of(context).colorScheme.onSecondary
                            : kTransparent,
                        thickness: 2,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
