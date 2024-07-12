import '../../../utils/contants/exports.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.title,
    this.btnTitle = "View All",
    this.showActionBtn = true,
    this.onPress,
    this.textColor,
  });

  final String title, btnTitle;
  final bool showActionBtn;
  final void Function()? onPress;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionBtn) TextButton(onPressed: onPress, child: Text(btnTitle))
      ],
    );
  }
}
