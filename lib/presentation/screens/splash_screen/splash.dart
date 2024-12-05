// ignore_for_file: unnecessary_string_escapes

part of 'splash_imports.dart';
@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
     moveToOnBoard();
    super.initState();
  }
  moveToOnBoard() async {
    await Future.delayed(const Duration(seconds: 3),(){
      AutoRouter.of(context).push(const OnBoardRoute());
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:ProjColors.lightsecondaryColor ,
      body: Center(child: 
      FadedScaleAnimation(
        child: Image.asset(
          "assets/images/news.png",
          height: 80,
          width: 80,
        ),
      )
      ),
    );
  }
}