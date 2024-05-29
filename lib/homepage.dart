import 'package:flutter/material.dart';
import 'package:idms/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProductItem(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Badminton',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
              pageSize: pageSize,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductScreen(
                            image: 'assets/images/kridansh_logo.jpeg',
                            title: 'Product 1',
                            description: 'Description of Product 1',
                            price: 'Price: \₹10',
                            pageSize: pageSize,
                          )),
                );
              },
            ),
            ProductItem(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
              pageSize: pageSize,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductScreen(
                            image: 'assets/images/kridansh_logo.jpeg',
                            title: 'Product 1',
                            description: 'Description of Product 1',
                            price: 'Price: \₹10',
                            pageSize: pageSize,
                          )),
                );
              },
            ),
            ProductItem(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
              pageSize: pageSize,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductScreen(
                            image: 'assets/images/kridansh_logo.jpeg',
                            title: 'Product 1',
                            description: 'Description of Product 1',
                            price: 'Price: \₹10',
                            pageSize: pageSize,
                          )),
                );
              },
            ),
            ProductItem(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
              pageSize: pageSize,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductScreen(
                            image: 'assets/images/kridansh_logo.jpeg',
                            title: 'Product 1',
                            description: 'Description of Product 1',
                            price: 'Price: \₹10',
                            pageSize: pageSize,
                          )),
                );
              },
            ),
            ProductItem(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
              pageSize: pageSize,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductScreen(
                        image: 'assets/images/kridansh_logo.jpeg',
                        title: 'Product 1',
                        description: 'Description of Product 1',
                        price: 'Price: \₹10',
                        pageSize: pageSize,
                      )),
                );
              },
            ),
            ProductItem(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
              pageSize: pageSize,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductScreen(
                        image: 'assets/images/kridansh_logo.jpeg',
                        title: 'Product 1',
                        description: 'Description of Product 1',
                        price: 'Price: \₹10',
                        pageSize: pageSize,
                      )),
                );
              },
            ),
            ProductItem(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
              pageSize: pageSize,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductScreen(
                        image: 'assets/images/kridansh_logo.jpeg',
                        title: 'Product 1',
                        description: 'Description of Product 1',
                        price: 'Price: \₹10',
                        pageSize: pageSize,
                      )),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
