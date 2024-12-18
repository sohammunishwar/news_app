part of 'widgets_imports.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/poster2.webp", height: 333.h, width: 333.w),
        "Clinical Consultation"
            .text
            .align(TextAlign.center)
            .size(15.sp)
            .fontWeight(FontWeight.w500)
            .make()
      ],
    );
  }
}
