import 'package:shop_smart/utils/contants/exports.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          width: double.infinity,
          showBorder: true,
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: selectedAddress
              ? basicPprimaryColor.withOpacity(0.5)
              : Colors.transparent,
          borderColor: selectedAddress
              ? Colors.transparent
              : darkMode
                  ? darkerGrey
                  : grey,
          margin: const EdgeInsets.only(bottom: TSizes.spaceBwItems),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 5,
                child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                    color: selectedAddress
                        ? darkMode
                            ? light
                            : black.withOpacity(0.7)
                        : null),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("John Doe",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge),
                  const Gap(TSizes.sm / 2),
                  const Text("03171671146",
                      maxLines: 1, overflow: TextOverflow.ellipsis),
                  const Gap(TSizes.sm / 2),
                  const Text(
                      "main pindi road razgir banda, kohat bazar khyber pakhtunknwa, Pakistan, South Asia, World",
                      softWrap: true),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
