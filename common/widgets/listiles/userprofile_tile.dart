import 'package:shop_smart/utils/contants/exports.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({super.key, this.onPress});

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
          image: TImages.userImage, width: 50.w, height: 50.h, padding: 0),
      title: Text("Maaz",
          style:
              Theme.of(context).textTheme.headlineSmall!.apply(color: white)),
      subtitle: Text("Maazkhan666.mk47@gmail.com",
          style: Theme.of(context).textTheme.bodyMedium!.apply(color: white)),
      trailing: IconButton(
          onPressed: onPress, icon: const Icon(Iconsax.edit, color: white)),
    );
  }
}
