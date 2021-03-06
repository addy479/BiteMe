import 'package:biteme/models/product.dart';
import 'package:biteme/widgets/product_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SearchResultsList extends StatelessWidget {
  final List<Product> searchResultsList;
  final FirebaseUser user;

  SearchResultsList({this.searchResultsList, this.user});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView(
          padding: EdgeInsets.all(10),
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3/4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
            children: List.generate(searchResultsList.length, (index) {
              return ProductCard(
                product: searchResultsList[index],
                user: user, searched: true,
              );
            })));
  }
}
