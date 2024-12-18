part of 'widgets_imports.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/poster1.jpg", height: 333.h, width: 333.w),
        "Digitalized Appointments"
            .text
            .align(TextAlign.center)
            .size(15.sp)
            .fontWeight(FontWeight.w500)
            .make()
      ],
    );
  }
}
