import 'package:day_1/coin_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  final List<Widget> wallets = [
    Text(
      "39.584",
    ),
    Text(
      "39.584",
    ),
    Text(
      "39.584",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.sort, color: Colors.grey),
        title: Text(
          "Wallets",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 13),
            child: Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.grey,
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFFF0F3F7),
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: wallets
                  .asMap()
                  .map((i, e) => MapEntry(
                      i,
                      WalletWidget(
                        marginLeft: (i == wallets.length) ? 0 : 16,
                        marginRight: (i == wallets.length - 1) ? 16 : 0,
                      )))
                  .values
                  .toList()),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sorted  by higher %",
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                children: [
                  Text(
                    "24H",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.grey,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.builder(
          itemCount: coinList.length,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (_, index) {
            return CoinListWidget(
              coin: coinList[index],
            );
          },
        )
      ])),
    );
  }
}

class CoinListWidget extends StatelessWidget {
  final CoinModel coin;

  const CoinListWidget({Key key, this.coin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFF0F3F7).withOpacity(0.3),
                spreadRadius: 7,
                blurRadius: 7,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: coin.coinColor, shape: BoxShape.circle),
                      ),
                      Center(
                        child: Container(
                          height: 23,
                          width: 23,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/${coin.coinImage}",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${coin.myCoinAmount} ${coin.coinName}"),
                    SizedBox(height: 3),
                    Text(
                      "\$${coin.myCoinPrice}",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("\$${coin.coinPrice}"),
                  SizedBox(height: 3),
                  Text(
                    "${coin.coinPriceChange}%",
                    style: TextStyle(
                        color: (coin.coinIsHigh) ? Colors.green : Colors.red),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class WalletWidget extends StatelessWidget {
  final double marginLeft;
  final double marginRight;

  const WalletWidget({
    Key key,
    this.marginLeft,
    this.marginRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.15,
      margin: EdgeInsets.only(left: marginLeft, right: marginRight),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFF0F3F7).withOpacity(0.3),
            spreadRadius: 7,
            blurRadius: 7,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFF4B5867)),
                      child: Icon(
                        Icons.account_balance_wallet,
                        size: 30,
                        color: Colors.white,
                      )),
                  SizedBox(width: 15),
                  Text(
                    "Total Wallet Balance",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(children: [
                Text(
                  "USD ",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.expand_more,
                  color: Colors.grey,
                ),
              ])
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$39.584",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green),
                child: Text(
                  "+35.55%",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "7.251332 BTC",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
          Icon(
            Icons.expand_more,
            color: Colors.grey,
            size: 40,
          ),
        ],
      ),
    );
  }
}
