import '../../../../utils/contants/exports.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppbar(
            title: Text("Store",
                style: Theme.of(context).textTheme.headlineMedium),
            actions: [TCartCounterIcon(onPress: () {})]),
        body: NestedScrollView(
            headerSliverBuilder: headerSliverBuilder, body: body));
  }
}
