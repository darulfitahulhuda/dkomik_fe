part of 'widgets.dart';

class CardNewUpdate extends StatelessWidget {
  final String image;
  const CardNewUpdate({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          NavigationUtils.moveArguments(context, Routes.detailKomik, image),
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.only(right: 19),
            decoration: const BoxDecoration(
                // color: Colors.green,
                ),
            child: Row(
              children: [
                Hero(
                  tag: image,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      ImageUtils.imgJudul,
                      height: 200,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Demon Slayer",
                        style:
                            kSubtitleDark.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            ChapterAndTime(),
                            ChapterAndTime(),
                            ChapterAndTime(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: kGrey,
            thickness: 2,
          )
        ],
      ),
    );
  }
}

class ChapterAndTime extends StatelessWidget {
  const ChapterAndTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: kDavysGrey,
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Text(
            "Ch. 100",
            style: kBodyTextDark.copyWith(fontWeight: FontWeight.normal),
          ),
        ),
        Text(
          "1 minute ago",
          style: kBodyTextDark.copyWith(color: Colors.white54, fontSize: 12),
        ),
      ],
    );
  }
}
