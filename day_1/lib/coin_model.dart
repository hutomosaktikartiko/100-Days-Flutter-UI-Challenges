import 'package:flutter/material.dart';

class CoinModel {
  final String myCoinAmount;
  final String coinName;
  final String coinPrice;
  final String coinPriceChange;
  final String myCoinPrice;
  final bool coinIsHigh;
  final String coinImage;
  final Color coinColor;

  CoinModel(
      {this.coinName,
      this.coinPrice,
      this.coinPriceChange,
      this.myCoinAmount,
      this.coinColor,
      this.coinImage,
      this.coinIsHigh,
      this.myCoinPrice});
}

final List<CoinModel> coinList = [
  CoinModel(
      coinName: "BTC",
      coinPrice: "19.343",
      coinPriceChange: "+ 4.32",
      coinIsHigh: true,
      coinColor: Color(0xFFFEB232),
      coinImage: "BITCOIN.png",
      myCoinAmount: "3.529020",
      myCoinPrice: "5.441"),
  CoinModel(
      coinName: "ETH",
      coinPrice: "4.883",
      coinPriceChange: "+ 3.97",
      coinIsHigh: true,
      coinImage: "ETHEREUM.png",
      coinColor: Color(0xFF743CFC),
      myCoinAmount: "13.529320",
      myCoinPrice: "401"),
  CoinModel(
      coinName: "XRP",
      coinPrice: "859",
      coinPriceChange: "- 13.55",
      coinIsHigh: false,
      coinImage: "XRP.png",
      coinColor: Color(0xFF1698F5),
      myCoinAmount: "1911.529020",
      myCoinPrice: "0.45"),
];
