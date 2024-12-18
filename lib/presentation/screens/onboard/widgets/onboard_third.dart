part of 'widgets_imports.dart';

class OnboardThird extends StatelessWidget {
  const OnboardThird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/poster3.webp", height: 333.h, width: 333.w),
        "Online Reports"
            .text
            .align(TextAlign.center)
            .size(15.sp)
            .fontWeight(FontWeight.w500)
            .make()
      ],
    );
  }
}
