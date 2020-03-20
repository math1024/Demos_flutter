import 'package:flutter/material.dart';

import 'product/product.dart';
import 'product/product_repo.dart';
import 'supplement/asymmetric_view.dart';

class ShoppingHome extends StatelessWidget {
  final Category category;
  const ShoppingHome({this.category: Category.all});
  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        leading: IconButton(
//          icon: Icon(
//            Icons.menu,
//            semanticLabel: 'menu',
//          ),
//          onPressed: () {
//            print('Menu button');
//          },
//        ),
//        title: Text('Home Page'),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(
//              Icons.search,
//              semanticLabel: 'search',
//            ),
//            onPressed: () {
//              print('Search button');
//            },
//          ),
//          IconButton(
//            icon: Icon(
//              Icons.tune,
//              semanticLabel: 'filter',
//            ),
//            onPressed: () {
//              print('Filter button');
//            },
//          ),
//        ],
//      ),

//      body: GridView.count(
//          crossAxisCount: 2,
//          padding: EdgeInsets.all(16.0),
//          childAspectRatio: 8.0 / 9.0,
//          children: _buildGridCards(16)),
//      resizeToAvoidBottomInset: false,
//      body: AsymmetricView(
//          products: ProductsRepository.loadProducts(Category.all)),
//    );

     return AsymmetricView(
          products: ProductsRepository.loadProducts(category));
  }

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
      (int index) => Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset('assets/diamond.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Title'),
                  SizedBox(height: 8.0),
                  Text('Secondary Text'),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    return cards;
  }
}
