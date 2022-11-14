part of 'widget.dart';

class BottomNavigatoinMain extends StatelessWidget {
  const BottomNavigatoinMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageBloc, MainPageState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          height: 70,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: const BoxDecoration(
            color: kRichBlack,
            borderRadius: BorderRadius.vertical(top: kRadius24),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    if (state is! MainPageHome) {
                      context.go(AppRoutes.home);
                      context.read<MainPageBloc>().add(MainPageHomeEvent());
                    }
                  },
                  child: Container(
                      height: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(topLeft: kRadius24)),
                      child: Icon(
                        Icons.home_filled,
                        color: state is MainPageHome ? kwhite : kGrey,
                      )),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    if (state is! MainPageSearch) {
                      context.go(AppRoutes.search);
                      context.read<MainPageBloc>().add(MainPageSearchEvent());
                    }
                  },
                  child: Container(
                    height: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(topLeft: kRadius24)),
                    child: Icon(
                      Icons.search,
                      color: state is MainPageSearch ? kwhite : kGrey,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    toast("Search Donwload on Development");
                  },
                  child: Container(
                    height: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(topLeft: kRadius24)),
                    child: const Icon(
                      Icons.download_done,
                      color: kGrey,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    toast("Search Profile on Development");
                  },
                  child: Container(
                    height: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(topLeft: kRadius24)),
                    child: const Icon(
                      Icons.person_outline,
                      color: kGrey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
