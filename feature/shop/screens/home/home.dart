import 'package:shop_smart/utils/contants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("home")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: basicPprimaryColor,
              padding: EdgeInsets.zero,
            ),
          ],
        ),
      ),
    );
  }
}
