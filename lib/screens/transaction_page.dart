import 'package:bankapp_ui/themes/theme_styles.dart';
import 'package:bankapp_ui/widgets/card_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionPage extends StatefulWidget {
  final String? title;
  final String? subTitle;
  final String? price;
  final String? letter;
  final Color? color;

  const TransactionPage(
      {this.title, this.subTitle, this.price, this.letter, this.color});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sent'),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: _onPressed,
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 15.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Outgoing Transaction',
                        style: ThemeStyles.primaryTitle,
                      )
                    ],
                  ),
                ),
                CardInPage(
                  color: widget.color,
                  title: widget.title,
                  subTitle: widget.subTitle,
                  price: widget.price,
                  letter: widget.letter,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 8.0, left: 16.0),
                      child: Text(
                        'Details',style: ThemeStyles.primaryTitle,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/transfer-svgrepo-com.svg'),
                    Text('Bank Transfer', style: ThemeStyles.otherDetailsPrimary,)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onPressed() {
    Navigator.of(context).pop();
  }
}