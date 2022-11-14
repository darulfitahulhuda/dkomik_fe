part of 'widgets.dart';

class DetailTags extends StatelessWidget {
  final String tag;
  final String data;
  const DetailTags({Key? key, this.tag = "", this.data = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 5, 24, 0),
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            color: kPrussianBlue,
            margin: const EdgeInsets.only(right: 10),
          ),
          Text("$tag: $data",
              style: kSubtitleDark.copyWith(
                  fontWeight: FontWeight.bold, color: kDavysGrey)),
        ],
      ),
    );
  }
}
