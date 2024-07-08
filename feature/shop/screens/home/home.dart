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
            ClipPath(
              clipper: TCustomCurvedEdges(),
              child: Container(
                color: basicPprimaryColor,
                padding: EdgeInsets.zero,
                child: SizedBox(
                  height: 400,
                  child: Stack(children: [
                    Positioned(
                      top: -150,
                      right: -250,
                      child: TCircularContainer(
                          backgroundColor: textWhiteColor.withOpacity(0.1)),
                    ),
                    Positioned(
                        top: 100,
                        right: -300,
                        child: TCircularContainer(
                            backgroundColor: textWhiteColor.withOpacity(0.1))),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


                  //
                  //
                  // const Column(
                  //   children: [
                      //
                      // appber

                      //
                      //searchbar

                      //
                      //categories
                //    ],
                  //)