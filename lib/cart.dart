import 'package:flutter/material.dart';

// Cart widget
class CartWidget extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final String price;

  CartWidget({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  int quantity = 0;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;

    return Container(
      height: pageSize.height * 0.15,
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 8, top: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              widget.image,
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  widget.description,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      widget.price,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: decrementQuantity,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Icon(Icons.remove),
                        padding: EdgeInsets.all(8),
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      quantity.toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap: incrementQuantity,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Icon(Icons.add),
                        padding: EdgeInsets.all(8),
                      ),
                    ),
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

// Cart Screen

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CartWidget(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
            ),
            CartWidget(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
            ),
            CartWidget(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
            ),
            CartWidget(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              price: 'Price: \₹10',
            ),
          ],
        ),
      ),
    );
  }
}
