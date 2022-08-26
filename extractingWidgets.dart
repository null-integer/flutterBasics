import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [
    Quote('Be yourself; everyone else is already taken','Oscar Wilde'),
    Quote('I have nothing to declare except my genius','Oscar Wilde'),
    Quote('The truth is rarely pure and never simple','Oscar Wilde'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote:quote)).toList(),

      ),
    );
  }
}


