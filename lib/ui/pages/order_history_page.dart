part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  OrderHistoryPage({Key key}) : super(key: key);

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;
  List<Transaction> inProgress = mockTransactions
      .where((element) =>
          element.status == TransactionStatus.on_delivery ||
          element.status == TransactionStatus.pending)
      .toList();
  List<Transaction> past = mockTransactions
      .where((element) =>
          element.status == TransactionStatus.delivered ||
          element.status == TransactionStatus.cancelled)
      .toList();
  @override
  Widget build(BuildContext context) {
    if (inProgress.length == 0 && past.length == 0) {
      return IllustrationPage(
        title: "Ayo Pelihara Sesuatu",
        subtitle: 'Seems like you have not \nordered any food yet',
        picturePath: 'assets/love_plants.png',
        buttonTap1: () {},
        buttonTitle1: 'Plants Order',
      );
    } else {
      double listItemWidth =
          MediaQuery.of(context).size.width - 2 * defaultMargin;

      return ListView(
        children: [
          Column(
            children: [
              // Header
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: defaultMargin),
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                child: Column(children: [
                  Text(
                    'Your Order',
                    style: blackFontStyl1e,
                  ),
                  Text(
                    'Tunggu pesanan Tanamanmu',
                    style: blackFontStyle3,
                  )
                ]),
              ),
              // Body
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      titles: ['In Progress', 'Past Orders'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: (selectedIndex == 0 ? inProgress : past)
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(
                                    right: defaultMargin,
                                    left: defaultMargin,
                                    bottom: 16),
                                child: OrderListItem(
                                    transaction: e, itemWidth: listItemWidth),
                              ))
                          .toList(),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      );
    }
  }
}
