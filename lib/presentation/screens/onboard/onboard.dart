part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

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
              "assets/images/news.png",
              height: 80,
              width: 80,
            ),
            PageView(
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/poster1.jpg",
                        height: 500, width: 500),
                    "Digitalized Appointments"
                        .text
                        .align(TextAlign.center)
                        .size(15)
                        .fontWeight(FontWeight.w500)
                        .make()
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/poster2.webp",
                        height: 500, width: 500),
                    "Online Consultation"
                        .text
                        .align(TextAlign.center)
                        .size(15)
                        .fontWeight(FontWeight.w500)
                        .make()
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/poster3.webp",
                        height: 500, width: 500),
                    "Clinical Reports"
                        .text
                        .align(TextAlign.center)
                        .size(15)
                        .fontWeight(FontWeight.w500)
                        .make()
                  ],
                )
              ],
            ).expand(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ProjColors.lightprimaryColor,
                  minimumSize: Size(MediaQuery.of(context).size.width, 44),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11)),
                ),
                onPressed: () {},
                child: "Get Started"
                    .text
                    .size(16)
                    .fontWeight(FontWeight.w700)
                    .make()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Skip"
                    .text
                    .color(ProjColors.lightprimaryColor)
                    .size(16)
                    .fontWeight(FontWeight.w700)
                    .make(),
                "Next"
                    .text
                    .color(ProjColors.lightprimaryColor)
                    .size(16)
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
