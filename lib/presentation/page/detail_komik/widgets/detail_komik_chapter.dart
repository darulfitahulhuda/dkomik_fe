part of 'widgets.dart';

class DetailKomikChapter extends StatelessWidget {
  const DetailKomikChapter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chapter 70",
                  style: kSubtitleDark.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
                Text(
                  /// NOTES: IF dateTime more than 1 week ? 04/11/22 : (5 five days ago || Today || Yesterday)
                  "04/11/22",
                  style: kSubtitleDark.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).colorScheme.onSurface),
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.download_for_offline_outlined)),
          ],
        ),
        Container(),
      ],
    );
  }
}
