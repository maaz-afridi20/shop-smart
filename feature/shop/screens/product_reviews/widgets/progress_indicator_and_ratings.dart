import '../../../../../utils/contants/exports.dart';

class TRatingsProgressIndicator extends StatelessWidget {
  const TRatingsProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
            flex: 11,
            child: SizedBox(
                width: TDeviceUtils.getScreenWidth(context) * 0.5,
                child: LinearProgressIndicator(
                    value: value,
                    minHeight: 12,
                    backgroundColor: grey,
                    valueColor:
                        const AlwaysStoppedAnimation(basicPprimaryColor),
                    borderRadius: BorderRadius.circular(7.r))))
      ],
    );
  }
}
