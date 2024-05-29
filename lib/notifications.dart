import 'package:flutter/material.dart';
import 'package:idms/product.dart';


class NotificationItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String status;
  final Size pageSize;

  const NotificationItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.status,
    required this.pageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: pageSize.height * 0.13,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: Image.asset(
                image,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    status,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NotificationItem(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              status: 'Approved',
              pageSize: pageSize,

            ),
            NotificationItem(
              image: 'assets/images/kridansh_logo.jpeg',
              title: 'Product 1',
              description: 'Description of Product 1',
              status: 'In Process',
              pageSize: pageSize,

            ),

          ],
        ),
      ),
    );
  }
}
