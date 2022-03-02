part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String tittle;
  final String subTittle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

   GeneralPage(
      {this.tittle = 'Tittle',
      this.subTittle = 'subtitle',
      this.onBackButtonPressed,
      this.child,
      this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            color: backColor ?? Colors.white,
          )),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                      color: Colors.white,
                      child: Row(
                        children: [
                          onBackButtonPressed != null
                              ? GestureDetector(
                                onTap: () {
                                  if (onBackButtonPressed != null){
                                    onBackButtonPressed();
                                  }
                                },
                                child: Container(
                                    width: defaultMargin,
                                    height: defaultMargin,
                                    margin: const EdgeInsets.only(right: 20),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/back_arrow.png")),
                                    ),
                                  ),
                              )
                              : const SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(tittle,
                                  style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500)),
                              Text(subTittle,
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: '8D92A3'.toColor(),
                                      fontWeight: FontWeight.w300)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: defaultMargin,
                      width: double.infinity,
                      color: "FAFAFC".toColor(),
                    ),
                    child ?? const SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
