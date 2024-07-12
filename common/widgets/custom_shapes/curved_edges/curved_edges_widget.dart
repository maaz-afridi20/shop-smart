import '../../../../utils/contants/exports.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
