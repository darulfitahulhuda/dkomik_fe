part of 'widgets.dart';

class DetailKomikTab extends StatelessWidget {
  const DetailKomikTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "10000",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Views",
                  style: kSubtitleDark.copyWith(
                      fontWeight: FontWeight.normal, color: kDavysGrey),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "100",
                  style: kSubtitleDark.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Bookmark",
                  style: kSubtitleDark.copyWith(
                      fontWeight: FontWeight.normal, color: kDavysGrey),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "8.5",
                  style: kSubtitleDark.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rating",
                  style: kSubtitleDark.copyWith(
                      fontWeight: FontWeight.normal, color: kDavysGrey),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        const DetailTags(tag: "Released", data: "Feb 15, 2016"),
        const DetailTags(
            tag: "Author", data: "Gotouge, Koyoharu (Story & Art)"),
        const DetailTags(tag: "Status", data: "Completed"),
        const DetailTags(tag: "Type", data: "Manga"),
        const DetailTags(tag: "Total Chapter", data: "205"),
        const DetailTags(tag: "Update on", data: "August 16, 2021"),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 15, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sinopsis",
                style: kSubtitleDark.copyWith(
                    fontWeight: FontWeight.bold, color: kDavysGrey),
              ),
              const Divider(
                color: kDavysGrey,
                thickness: 2,
              ),
              Text(
                "Disetting pada era Taisho Jepang. Tanjirou adalah seorang anak muda yang baik hati yang hidup damai dengan keluarganya sebagai penjual batubara. kehidupan normal mereka berubah sepenuhnya ketika keluarganya dibantai oleh setan. salah satu yang selamat lainnya, adik Tanjirou ini Nezuko, telah menjadi setan ganas. Dalam rangka untuk kembali Nezuko normal dan membalas dendam pada setan yang membunuh keluarga mereka, mereka berdua berangkat pada perjalanan. Dari bakat muda, kisah petualangan darah dan pedang dimulai!",
                textAlign: TextAlign.justify,
                style: kSubtitleDark.copyWith(
                    fontWeight: FontWeight.normal, color: kDavysGrey),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30)
      ],
    );
  }
}
