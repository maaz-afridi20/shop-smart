import '../../../../../utils/contants/exports.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return TAppbar(
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(TTextStrings.homeAppbarTitle1,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: white)),
        Text(TTextStrings.homeAppbarSubtitleTitle1,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: grey)),
      ]),
      actions: [TCartCounterIcon(onPress: () {}, iconColor: white)],
    );
  }
}
