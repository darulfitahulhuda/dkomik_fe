part of 'widgets.dart';

class CardContinue extends StatelessWidget {
  final String image;
  const CardContinue({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/homes/$image');
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            color: kOxfordBlue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            elevation: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: image,
                  child: Container(
                    height: 140,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(ImageUtils.imgJudul),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Demon Slayer",
                  style: kSubtitleDark,
                ),
                Text(
                  "Chapter 3/10",
                  style: kBodyTextDark.copyWith(color: Colors.white54),
                ),
                const SizedBox(height: 3)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
