import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> item;

  const DetailsPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 15, 8),
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            'Item Details',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Material(
                elevation: 30,
                shadowColor: Colors.redAccent,
                child: Image.file(
                  item['image'],
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 100),
            Text('Owner: ${item['ownerName']}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            SizedBox(
              height: 20,
            ),
            Text('Phone: ${item['ownerPhone']}',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(
              height: 20,
            ),
            Text('Hostel Block: ${item['HostelBlock']}',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(
              height: 20,
            ),
            Text('Item: ${item['itemName']}',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(
              height: 20,
            ),
            Text('Price: Rs ${item['price']}',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
