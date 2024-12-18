part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ProjAssets.assetsImagesAuth,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  ProjAssets.assetsImagesNews,
                  height: 80.h,
                  width: 139.w,
                ).centered(),
                const Spacer(),
                "Explore The World,\n Billions Of Thoughts"
                    .text
                    .size(28.sp)
                    .white
                    .align(TextAlign.left)
                    .fontWeight(FontWeight.w700)
                    .make(),
                20.h.heightBox,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ProjColors.lightprimaryColor,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width, 44.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.r)),
                    ),
                    onPressed: () {},
                    child: "Login"
                        .text
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .make()),
                12.h.heightBox,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width, 44.h),
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(11.r)),
                    ),
                    onPressed: () {},
                    child: "Register"
                        .text
                        .size(16.sp)
                        .color(Colors.white)
                        .fontWeight(FontWeight.w700)
                        .make()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
