import 'package:flutter/material.dart';
import 'input.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> items = [];
  List<Map<String, dynamic>> filteredItems = [];
  TextEditingController searchController = TextEditingController();

  void addItem(Map<String, dynamic> newItem) {
    setState(() {
      items.add(newItem);
      filteredItems = items;
    });
  }

  @override
  void initState() {
    super.initState();
    filteredItems = items;
    searchController.addListener(_filterItems);
  }

  void _filterItems() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredItems = items.where((item) {
        return item['itemName'].toLowerCase().contains(query) ||
            item['ownerName'].toLowerCase().contains(query) ||
            item['HostelBlock'].toLowerCase().contains(query) ||
            item['price'].toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 15, 8),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Welcome',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: searchController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.black),
                filled: true,
                fillColor: const Color.fromARGB(255, 227, 224, 224),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search, color: Colors.red),
              ),
            ),
          ),
          Expanded(
            child: filteredItems.isEmpty
                ? Center(
                    child: Text(
                      'No items found!',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = filteredItems[index];
                      return Card(
                        color: const Color.fromARGB(255, 255, 237, 237),
                        margin: EdgeInsets.all(20),
                        elevation: 20,
                        shadowColor: const Color.fromARGB(255, 178, 86, 65),
                        child: ListTile(
                          leading: Image.file(
                            item['image'],
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            item['itemName'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('Price: Rs ${item['price']}'),
                          trailing: Text('Block: ${item['HostelBlock']}'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(item: item),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InputPage(addItem: addItem),
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
