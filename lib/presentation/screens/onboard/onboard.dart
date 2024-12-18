part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  OnBoardViewModel onBoardViewModel = OnBoardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset(
              ProjAssets.assetsImagesNews,
              height: 80.h,
              width: 80.w,
            ),
            63.h.heightBox,
            PageView(
              controller: onBoardViewModel.pageController,
              children: const [
                OnBoardFirst(),
                OnBoardSecond(),
                OnboardThird(),
              ],
            ).expand(),
            61.h.heightBox,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ProjColors.lightprimaryColor,
                  minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.r)),
                ),
                onPressed: () {
                  AutoRouter.of(context).push(const AuthRoute());
                },
                child: "Get Started"
                    .text
                    .size(16.sp)
                    .fontWeight(FontWeight.w700)
                    .make()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Skip"
                    .text
                    .color(ProjColors.lightprimaryColor)
                    .size(16.sp)
                    .fontWeight(FontWeight.w700)
                    .make(),
                SmoothPageIndicator(
                    controller:
                        onBoardViewModel.pageController, // PageController
                    count: 3,
                    effect: const WormEffect(
                      activeDotColor: ProjColors.lightprimaryColor,
                      dotHeight: 8.0,
                      dotWidth: 8.0,
                    ), // your preferred effect
                    onDotClicked: (index) {}),
                "Next"
                    .text
                    .color(ProjColors.lightprimaryColor)
                    .size(16.sp)
                    .fontWeight(FontWeight.w700)
                    .make()
              ],
            ),
          ]),
        ),
      ),
    ));
  }
}
