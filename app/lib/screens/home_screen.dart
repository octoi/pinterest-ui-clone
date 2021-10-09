import 'package:app/widgets/top.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: double.infinity,
          height: 50.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.search,
                color: Colors.grey,
                size: 30.0,
              ),
              SizedBox(width: 8.0),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: "Search for ideas",
                  ),
                ),
              ),
              SizedBox(width: 8.0),
              Icon(
                Icons.camera_alt,
                color: Colors.grey,
                size: 30.0,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            Top(),
          ],
        ),
      ),
    );
  }
}
